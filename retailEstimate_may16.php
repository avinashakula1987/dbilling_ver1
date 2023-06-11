<?php include("database.php"); ?>
<?php include("session.php"); ?>
<?php

	if( isset($_POST['billmobile']) && isset($_POST['currentlypayingnow']) ){
		$billmobile = $_POST['billmobile'];
		$currentlypayingnow = $_POST['currentlypayingnow'];
		$currentlypayingnowa = $_POST['currentlypayingnowa'];
		$sql = "SELECT COUNT(*) as count FROM credits WHERE mobile='$billmobile'";
		$qry = $db->query($sql);
		$rows = $qry->fetchArray();
		$count = $rows['count'];
		if( $count == 0 ){
			$qry = "INSERT INTO credits (mobile, credit) VALUES('$billmobile', '$currentlypayingnowa')";
			$insert = $db->exec($qry);
			echo true;
		}else{
			$sql = "SELECT * FROM credits WHERE mobile='$billmobile'";
			$qry = $db->query($sql);
			$rows = $qry->fetchArray();
			$credit = $rows['credit'];
			$pending = (float)$currentlypayingnowa + (float)$credit;
			$sql = "UPDATE credits SET credit='$pending' WHERE mobile='$billmobile'";
			$update = $db->exec($sql);
			echo true;				
		}
		exit();
	}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Invoice</title>	
	<script type='text/javascript' src='js/jquery-3.2.1.min.js'></script>
	
	<link rel='stylesheet' href='css/jquery-ui.min.css'></link>
	<link rel='stylesheet' href='css/jquery-ui.structure.min.css'></link>
	<link rel='stylesheet' href='css/jquery-ui.theme.min.css'></link>	
	<link rel="stylesheet" href="css/bootstrap.min.css"></link>
	<link rel="stylesheet" href="css/bootstrap-theme.min.css"></link>
	
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.cookie.js"></script>
	<script src="js/create.js"></script>
	<script src="js/update.js"></script>
	<script src="js/delete.js"></script>
	<script src="js/billing.js"></script>
	<link rel='stylesheet' href='css/desireit.css'></link>
	
	<script type='text/javascript' src='js/jquery-ui.min.js'></script>


	<style>
		table td{
			font-size:11px
		}
	</style>

	
</head>
<body>

	<div style="padding:5px">

	
<?php
	function productcategory($productid, $db){
		$sql = "SELECT actualprice FROM stock WHERE id='".$productid."'";
		$get = mysqli_query($db, $sql);
		$res = mysqli_fetch_array($get);
		$actualprice = $res['actualprice'];
			
		$arrays = array("actualprice"=>$actualprice);		
		return $arrays;
	}
?>

<style>
	*{
		padding:0;
		margin:0
	}
	.updateStock{
		display:none;
	}
	.table .table tr, .table .table tr td{
		border:1px solid black;
	}
	table, th, td {
	border: 1px solid;
	}
	.bottomLeftBalances p{
		padding:0;
		margin:1px
	}
	
</style>
<?php
	if( isset($_GET['estimateId']) ){
		$estimateId = $_GET['estimateId'];
		$sql2 = "SELECT * FROM invoices WHERE id='$estimateId'";
		$selectInvoice = mysqli_query($db, $sql2);
		$res = mysqli_fetch_array($selectInvoice);
		$array = unserialize($res['info']);	
		$customername = $res["customer"];
		$customermobile = $res["mobile"];
		$state = $res["state"];
		$city = $res["city"];
		$address = $res["address"];
		$gst = $res["gst"];
		$pin = $res["pin"];
		$dat = $res["date"];
		$dispatchThrough = $res["dispatchThrough"];
		$consigneeVehicle = $res["vehicle"];
		$payable = $res['finaltotal'];
		$fullPayment = $res["fullPayment"];
		$partialPayment = $res["partialPayment"];
		$partialPayment_estimateId = (int)$res["partialPayment"];
		$customerid_original = $res["customerid"];
		$hamaliCharges = 0;
		
		$paidSoFar = $fullPayment=="Partial" ? $partialPayment : $partialPayment + checkPendingBalance($estimateId, $db);
		$paidSoFar2 = $partialPayment + checkPendingBalance($id, $db);
		$aa = $payable - $paidSoFar2;
		if( $refId == "" ){
			$current_pending = $payable - $paidSoFar;	
		}else{
			$current_pending = $total - $paidSoFar;
		}
									
		$date = date("d-M-y", strtotime($dat));
		//print_r($array);
	}else{
		echo "
		<div class='row text-center'>
			<br>Invoice not found<br>
			<a href='billing.php' class='btn btn-lg btn-warning'>Billing</a>
		</div>";
		exit();
	}
	$page = 1;
?>

<script>
	$(document).ready(function(){
		$(".invoiceNumber").html("<b><?php echo $invoiceId; ?></b>");
		$(".invoiceewaybillNumber").html("<b><?php echo $invoiceId; ?></b>");
		$(".consigneeTo").html("<b><?php echo $customername; ?></b>");
		$(".consigneeAddress").html("<b><?php echo $address; ?></b>");
		$(".consigneeCity").html("<b><?php echo $city; ?></b>");
		$(".consigneeState").html("<b><?php echo $state; ?></b>");
		$(".consigneeGST").html("<b><?php echo $gst; ?></b>");
		$(".consigneePin").html("<b><?php echo $pin; ?></b>");
		$(".billDateIs").html("<b><?php echo $date; ?></b>");
		$(".dispatchDocNo").html("<b><?php echo $invoiceId; ?></b>");
		$(".dispatchThrough").html("<b><?php echo $dispatchThrough; ?></b>");
		$(".consigneeVehicle").html("<b><?php echo $consigneeVehicle; ?></b>");
		
		
	});
</script>
			
			
			
			
		<div>
		<div class='text-center '>  
			<?php //$dd = invoiceHeader($db); echo $dd[0]; ?>
<br>
<h3 align='center'>ESTIMATE</h3>


<table align="left" cellpadding="5" cellspacing="1" style="text-align:left; width:100%;vertical-align:top; border-collapse: collapse;" >
	<tbody>
		
		<tr>
			<td style="margin-bottom:0;">
				
						<div style="border-bottom:1px solid black; padding:5px">
							JVK Enterprises<b> (<?php echo (date('Y')-1)."-".date('Y') ?>)</b><br>			
							<!-- <span class="consigneeCity"></span> -->
							<br><br><br>
						</div>					
						<div style="padding:5px">
							Buyer<br>
							<b class="consigneeTo"></b><br>
							<span class="consigneeCity"></span><br><br><br>
						</div>
					
				
			</td>	
			<td style="vertical-align:top;">
				
					<div style="width:100%; float:left; border-bottom:1px solid black; padding:5px">
						<div style="width: 50%;float: left">
							Invoice No.<br>
							<b><?= $estimateId; ?></b>
						</div>
						<div>
							Dated<br>
							<b><?= $date; ?></b>
						</div>
					</div>
				
			</td>		
		</tr>
		
		<tr>
			<td colspan="2">
			<div class='stockform billingblock'>				
			<table class='table table-condensed '>
				<thead>
					<tr>
						<th>SNo.</th>
						<th>Description of Goods</th>
						<th class='text-center'>Qty</th>
						<th class='text-center'>Rate</th>
						<th class='text-center'>Per</th>
						<th class='text-center'>Amount</th>
					</tr>
				</thead>
				<tbody>
				<?php
					$payable = 0;
					$sno = 1;
					$records = 1;
					$gsttotal = 0;
					$total1 = 0;
					$gst_tot = 0;
					$tally1 = 0;
					$tally2 = 0;
					$total_qty = 0;
					$new_totalamount = 0;
					for($i=1; $i<count($array); $i++){
						
								if( $array[$i] ){
									// var_dump($array[$i]);
									$category = $array[$i][0];
									$categoryid = $array[$i][1];
									$product = $array[$i][2];
									$productid = $array[$i][3];
									$productcategory = productcategory($productid, $db);
									$qty = $array[$i][4];
									$total = $qty * $array[$i][5];						
									$price = $array[$i][6];						
									$gst = $array[$i][7];						
									$pricewithgst = $array[$i][8];	
									$new_totalamount = $new_totalamount + $pricewithgst;
									$actual_individual_price = $array[$i][9];	
									$qtyType = $array[$i][11];	
									$actual_individual_price_total = $actual_individual_price * $qty;
									$totalgst = $qty * $gst;
									$total1 = $total1 + $total;
									$actual_individual_price_total_value = $actual_individual_price_total + $totalgst;
									$wgst = $price + $gst;	
									$wgst2 = $qty * $wgst;	
									$gsttotal = $gsttotal + ($gst);
									$gst_tot = $gst_tot+$gst;
									$payable = $total1 + $gst_tot;

									$total_qty = $total_qty+$qty;
									
									$tally1 = $tally1 + $actual_individual_price_total;
									$tally2 = $tally2 + $gst_tot;
									$grandtotal = $tally1 + $gsttotal;
									echo "
										<tr style='border:1px solid white'>
											<td>$sno</td>
											<td>$product</td>
											<td class='text-center'>$qty $qtyType</td>					
											<td class='text-center'>$actual_individual_price</td>					
											<td class='text-center'>$qtyType</td>					
											<td class='text-center'>$pricewithgst</td>										
										</tr>							
									";
									$sno++;
									$records++;
								}	
							
							}
					
							$current_paid = $grandtotal - $current_pending;
					
					?>		
					
				<!-- <tr>
					<td class='text-center'></td>
					<td class='text-right'>Hamali Charges</td>					
					<td class='text-center'></td>
					<td class='text-center'></td>
					<td class='text-center'></td>
					<td class='text-center'><input type='text' id='hamaliCharges' value='<?php echo $hamaliCharges; ?>' style='border:none; text-align:center'></td>
				</tr> -->

				<tr>
					<td class='text-center'></td>
					<td class='text-right'>Total</td>					
					<td class='text-center'></td>
					<td class='text-center'></td>
					<td class='text-center'></td>
					<td class='text-center finalpayabl'><?php echo $new_totalamount; ?> /-</td>
				</tr>

				<tr>
					<td class='text-center'></td>
					<td class='text-right'>Total Amount</td>					
					<td class='text-center'><?php echo $total_qty; ?></td>
					<td class='text-center'></td>
					<td class='text-center'></td>
					<td class='text-center finalpayabl'><b><?php echo $new_totalamount; ?> /-</b></td>
				</tr>
				
				<!-- <tr>
					<td class='text-center'></td>
					<td class='text-right'>Pending</td>					
					<td class='text-center'></td>
					<td class='text-center'></td>
					<td class='text-center'></td>
					<td class='text-center finalpayabl'><?php echo $current_pending; ?> /-</td>
				</tr>
				<tr>
					<td class='text-center'></td>
					<td class='text-right'>Paid</td>					
					<td class='text-center'></td>
					<td class='text-center'></td>
					<td class='text-center'></td>
					<td class='text-center finalpayabl'><?php echo $current_paid; ?> /-</td>
				</tr> -->

				<?php 
					$login = $_SESSION['login'];

					$qry = "WHERE status='1' AND transaction='In' AND login='$login' AND customerid='$customerid_original' AND id!='$customerid_original' AND id<'$estimateId'";						
						
					$sql = "SELECT * FROM invoices $qry ORDER BY id DESC";
					$get = mysqli_query($db, $sql);
						$sno = 1;
						
						$new_PrevBalance = 0;
						$new_PartialPayment = 0;
						$outstanding_total = 0;
						$outstanding_paid = 0;
						$outstanding_pending = 0;
						// echo mysqli_num_rows($get);
						while( $res = mysqli_fetch_array($get) ){
							$id = $res['id'];
							$customer = $res['customer'];
							$mobile = $res['mobile'];
							$info = $res['info'];
							$date = date('d, M Y', strtotime($res['date']));
							$status = $res['status'];
							$total = $res['total'];
							$qty = $res['qty'];
							$payable = $res['finaltotal'];
							$fullPayment = $res['fullPayment'];
							$partialPayment = $res['partialPayment'];									
							$refId = $res['refId'];		
							$customerInfo = "";
							if( $refId > 0 ){
								$getTransactionDetails = getTransactionDetails($db, $refId);
								$customerInfo = $getTransactionDetails[0].", <br>".$getTransactionDetails[1]."<br><i class='text-danger'>Reference of #$refId</i>";
								$total = $getTransactionDetails[2];
							}else{
								$customerInfo = "$customer<br>$mobile";
							}						
							$paid_pending_array = paid_pending($fullPayment, $payable, $partialPayment);
							$paidSoFar = $fullPayment=="Partial" ? $partialPayment : $partialPayment + checkPendingBalance($id, $db);
							$paidSoFar2 = $partialPayment + checkPendingBalance($id, $db);
							$aa = $payable - $paidSoFar2;
							if( $refId == "" ){
								$pendingAmount = $payable - $paidSoFar;	
							}else{
								$pendingAmount = $total - $paidSoFar;
							}

							if( $refId == 0 ){
								$new_PrevBalance = $new_PrevBalance + $payable;
								// $new_PartialPayment = $new_PartialPayment + $partialPayment; 
							}
							$new_PartialPayment = $new_PartialPayment + $partialPayment;
							
											
							
							$outstanding_total = $outstanding_total + $total;
							$outstanding_paid = $outstanding_paid + ($paidSoFar ? $paidSoFar : 0);
							$outstanding_pending = $outstanding_pending + $pendingAmount;
							$sno++;
						}

						
						
						// echo "<tr>
						// 	<td align='center' colspan='2'>Total: $outstanding_total</td>
						// 	<td align='center' colspan='2'>Paid: $outstanding_paid</td>
						// 	<td align='center' colspan='2'>Pending: $outstanding_pending</td>
						// </tr>";
						$os_total = $outstanding_total + $total;
						$os_paid = $outstanding_paid + ($paidSoFar ? $paidSoFar : 0);
						$os_pending = $outstanding_pending + $current_pending;
						$os_pending2 = $outstanding_pending + $grandtotal;


						$totalWithHamiCharges = $new_totalamount;
						// <p>Amount Chargeable (In words)</p>
						$new_outstandingBalance = $new_PrevBalance - $new_PartialPayment;
						$new_os_pending = $new_outstandingBalance + $current_pending;
						
						echo "<tr>
							<td colspan='6' class='bottomLeftBalances'>
							
							<!--<p><span style='width:150px; display:inline-block'>Prev. Balance</span> : <b>$new_PrevBalance</b></p>
							<p><span style='width:150px; display:inline-block'>Prev. Clearance</span> : <b>$new_PartialPayment</b></p>
							-->
							<p><span style='width:150px; display:inline-block'>Previous Balance</span> : <b>$new_outstandingBalance</b></p>
							
							<p><span style='width:150px; display:inline-block'>Current Paid</span> : <b>$partialPayment_estimateId</b></p>
							<!--<p><span style='width:150px; display:inline-block'>Current Paid</span> : <b>$partialPayment</b></p>-->
							<p><span style='width:150px; display:inline-block'>Current Balance</span> : <b>$current_pending</b></p>
							<p><span style='width:150px; display:inline-block'>Outstanding Balance</span> : <span style='border-top: 1px solid black;
							border-bottom: 1px solid black;
							padding-top: 1px;
							padding-bottom: 1px;
							width: 50px;
							display: inline-block'><b style='font-size:1.2em'>$new_os_pending</b></span></p>
							</td>
						</tr>";
						// echo "<tr>
						
						// 	<td colspan='3' style='border:none'></td>
						// 	<td colspan='3' style='' align='right'>
						// 		for <span class='consigneeTo'></span><br><br>
						// 		<b>JVK Polymers</b><br>
						// 		Authorised Signatory
						// 	</td>
						// </tr>"
						echo "<tr>
						
							<td colspan='3' style='border:none'></td>
							<td colspan='3' style='' align='right'>
								<b>JVK Polymers</b><br>
								Authorised Signatory
							</td>
						</tr>";

					?>		
				</tbody>
			</table>		
		
			
			
			</td>

		</tr>
	</tbody>
</table>

<div style='text-align:center; padding:1em; clear:both'>This is a Computer Generated Invoice</div>



		
	


<style>
	.a4{
		vertical-align:top !important;
		height:260mm;
		idth:210mm;
		eight:100%;
		osition:relative;
	}
	*{
		font-size:12px;
	}
	#foot{
		
	}
	#foot table td span{
		font-size:10px !important; 
	}
</style>
<div class='text-center'>
	<button class='btn btn-default btn-sm printme' >Print</button>
	<button class='btn btn-primary btn-sm backtoBillingPage' onClick="window.location.href='billing.php'" >Back to Billing Page</button>
	<!--<div class='form-group partialblock'>
		<input type='text' class='form-control' value='<?php echo $payable; ?>' data-actual='<?php echo $payable; ?>' id='partialpayingnow'><button class='btn btn-warning btn-sm mypendingbill' data-mobile='<?php echo $customerInfo[1]; ?>' >Pending</button>
	</div>-->	
</div>
<script>
	$(document).ready(function(){
		$('.printme').click(function(){
			$(this).hide();
			$('.backtoBillingPage').hide();
			window.print();	
			$(this).show();
			$('.backtoBillingPage').show();		
		});
		$('.mypendingbill').click(function(){
			billmobile = $(this).attr('data-mobile');
			currentlypayingnow = $('#partialpayingnow').val();
			currentlypayingnowa = $('#partialpayingnow').attr('data-actual');
			$.post("invoice.php", {billmobile:billmobile, currentlypayingnow:currentlypayingnow, currentlypayingnowa:currentlypayingnowa}, function(res){
				$('.partialblock').hide();
			});			
		});
		$('.finalpayable').html("<b><?php echo $payable; ?> /-</b>");
	});
</script>


