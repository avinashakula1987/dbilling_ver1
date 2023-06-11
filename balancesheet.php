<?php include("database.php"); ?>

<?php include("session.php"); ?>

<?php include("headpart.php"); ?>
<?php
	
	$monthsarray = array(
		"01"=> "January",
		"02"=> "February",
		"03"=> "March",
		"04"=> "April",
		"05"=> "May",
		"06"=> "June",
		"07"=> "July",
		"08"=> "August",
		"09"=> "September",
		"10"=> "October",
		"11"=> "November",
		"12"=> "December"	
	);

?>
<?php
	
	function getTotalByInvoice($id, $db){
	$sql = "SELECT mrpprice AS total FROM purchases WHERE id='$id'";
		$existance_check = mysqli_query($db, $sql);
		$r = mysqli_fetch_array($existance_check);
		$total = $r['total'];
		if( $total > 0 ){
			return $total;			
		}else{
			return 0;
		}
	}

	function monthName($m){
		if( $m == "01" ){ return "January"; }
		else if( $m == "02" ){ return "February"; }
		else if( $m == "03" ){ return "March"; }
		else if( $m == "04" ){ return "April"; }
		else if( $m == "05" ){ return "May"; }
		else if( $m == "06" ){ return "June"; }
		else if( $m == "07" ){ return "July"; }
		else if( $m == "08" ){ return "August"; }
		else if( $m == "09" ){ return "September"; }
		else if( $m == "10" ){ return "October"; }
		else if( $m == "11" ){ return "November"; }
		else if( $m == "12" ){ return "December"; }
		else if( $m == "All" ){ return "All"; }
	}

?>

<link rel='stylesheet' href='datatables/css/jquery.dataTables.min.css'></link>
<link rel='stylesheet' href='datatables/css/buttons.dataTables.min.css'></link>
<script type='text/javascript' src='datatables/js/jquery.dataTables.min.js'></script>
<script type='text/javascript' src='datatables/js/dataTables.buttons.min.js'></script>
<script type='text/javascript' src='datatables/js/buttons.flash.min.js'></script>
<script type='text/javascript' src='datatables/js/jszip.min.js'></script>
<script type='text/javascript' src='datatables/js/pdfmake.min.js'></script>
<script type='text/javascript' src='datatables/js/vfs_fonts.js'></script>
<script type='text/javascript' src='datatables/js/buttons.html5.min.js'></script>
<script type='text/javascript' src='datatables/js/buttons.print.min.js'></script>


<?php include("navbar.php"); ?>
<!-- <div id="body"> -->
	<div class='col-md-10 col-sm-10'>
		<div class='row'>
			<div class="panel panel-primary mainbody">
			<div class="panel-heading">
				<h3 class="panel-title">Ledger / Reports</h3>
			</div>
			<div class="panel-body">	
				<div class="row printBlock">
					<div class='col-md-12'>
						<form action='balancesheet.php' method='post' style='margin-bottom:10px'>
							<div class="row">
								<div class='col-md-3 '>
									<input type='text' name='customername' class='form-control customers_dropdown' placeholder='Customer' value="<?php echo isset($_POST['customername']) ? $_POST['customername'] : ""; ?>" />
									<?php 
										if( isset($_POST['customerIdHidden']) ){
											$cIdHidden = $_POST['customerIdHidden'];
											echo "<input type='hidden' id='customerIdHidden' name='customerIdHidden' value='$cIdHidden' />";
										}else{
											echo "<input type='hidden' id='customerIdHidden' name='customerIdHidden' />";
										}
									?>
									

								</div>
								<div class='col-md-2'>
									<input type='text' name='date1' class='form-control datepicker' autocomplete="off" placeholder='From Date' />
								</div>
								<div class='col-md-2'>
									<input type='text' name='date2' class='form-control datepicker' autocomplete="off" placeholder='To Date' />
								</div>
								<div class="col-md-3">
								
									<select name='month' class='form-control'>										
										<option value='All'>Select</option>																		
										<?php if( isset($_POST['month']) && $_POST['month']=="01" ){ echo "<option value='01' selected >January</option>"; }else { echo "<option value='01' >January</option>";}?>
										<?php if( isset($_POST['month']) && $_POST['month']=="02" ){ echo "<option value='02' selected >February</option>"; }else { echo "<option value='02' >February</option>";}?>
										<?php if( isset($_POST['month']) && $_POST['month']=="03" ){ echo "<option value='03' selected >March</option>"; }else { echo "<option value='03' >March</option>";}?>
										<?php if( isset($_POST['month']) && $_POST['month']=="04" ){ echo "<option value='04' selected >April</option>"; }else { echo "<option value='04' >April</option>";}?>
										<?php if( isset($_POST['month']) && $_POST['month']=="05" ){ echo "<option value='05' selected >May</option>"; }else { echo "<option value='05' >May</option>";}?>
										<?php if( isset($_POST['month']) && $_POST['month']=="06" ){ echo "<option value='06' selected >June</option>"; }else { echo "<option value='06' >June</option>";}?>
										<?php if( isset($_POST['month']) && $_POST['month']=="07" ){ echo "<option value='07' selected >July</option>"; }else { echo "<option value='07' >July</option>";}?>
										<?php if( isset($_POST['month']) && $_POST['month']=="08" ){ echo "<option value='08' selected >August</option>"; }else { echo "<option value='08' >August</option>";}?>
										<?php if( isset($_POST['month']) && $_POST['month']=="09" ){ echo "<option value='09' selected >September</option>"; }else { echo "<option value='09' >September</option>";}?>
										<?php if( isset($_POST['month']) && $_POST['month']=="10" ){ echo "<option value='10' selected >October</option>"; }else { echo "<option value='10' >October</option>";}?>
										<?php if( isset($_POST['month']) && $_POST['month']=="11" ){ echo "<option value='11' selected >November</option>"; }else { echo "<option value='11' >November</option>";}?>
										<?php if( isset($_POST['month']) && $_POST['month']=="12" ){ echo "<option value='12' selected >December</option>"; }else { echo "<option value='12' >December</option>";}?>
										
									</select>									
								</div>	

								<div class="col-md-2">
									<input type='submit' name='submit' class='btn btn-info' value='Search'>
								</div>	
							</div>	
						</form>	
					</div>			
				</div>	
				
				
				<div class='well'>
					<div class='table-responsive'>
						<?php
							if( isset( $_POST['customername'] ) ){
								echo $customername = $_POST['customername'];
								echo "<br>";
							}
							if( isset($_POST['date1']) && !empty($_POST['date1']) &&  isset($_POST['date2']) && !empty($_POST['date2']) ){
								$date1 = $_POST['date1'];
								$date2 = $_POST['date2'];								
								echo "Date between ($date1 - $date2)";
							}
							if( isset($_POST['month']) ){
								$month = $_POST['month'];

								echo "Month - ".monthName($month);
							}
						?>
						<div class='text-center printBlock'>
							<button class='btn btn-primary btn-sm pull-right' style='margin-bottom:10px' id="print">Print</button>
						</div>	
						<div id="printable">
					<table class='table table-condensed table-bordered' id='datatables'>
						
						<tbody>
							<tr>
								<td colspan='8' class='text-left'><b id="byselection"></b></td>
							</tr>
							<tr>
								<td>Date</td>
								<td>Particulars</td>
								<td>Vch Type</td>							
								<td>Vch No</td>							
								<td class='bg-warning'>Total</td>
								<td>Paid</td>
								<td >Prev. Pending</td>
								<td class='bg-warning'>>Curr. Pending</td>
							</tr>
							<?php 
								$date1 = date('Y-m-01');
								$date2 = date('Y-m-31');

								
								
								
								if( isset($_POST['date1']) && !empty($_POST['date1']) &&  isset($_POST['date2']) && !empty($_POST['date2']) ){
									$date1 = mysqli_real_escape_string($db, $_POST['date1']);
									$date2 = mysqli_real_escape_string($db, $_POST['date2']);								
									$dd = "AND date BETWEEN '$date1' AND '$date2'";
								}else{
									$dd = "";
								}

								if( isset($_POST['customerIdHidden']) && !empty($_POST['customerIdHidden']) ){
									$customerIdHidden = mysqli_real_escape_string($db, $_POST['customerIdHidden']);
									$c = "AND customerid='$customerIdHidden'";
								}else{
									$c = "";
								}
								
								if( isset($_POST['month']) ){
									$month = $_POST['month'];
									if( $month == "All" ){
										if( isset($_POST['date1']) && !empty($_POST['date1']) &&  isset($_POST['date2']) && !empty($_POST['date2']) ){
											$date1 = mysqli_real_escape_string($db, $_POST['date1']);
											$date2 = mysqli_real_escape_string($db, $_POST['date2']);								
											$mm = "AND date BETWEEN '$date1' AND '$date2'";
										}else{
											$date1 = mysqli_real_escape_string($db, date("Y-m-d"));
											$date2 = mysqli_real_escape_string($db, date("Y-m-d"));
											$mm = "";
										}
										
									}else{
										$date1 = mysqli_real_escape_string($db, date("Y-$month-01"));
										$date2 = mysqli_real_escape_string($db, date("Y-$month-31"));
										$mm = "AND date BETWEEN '$date1' AND '$date2'";
									}
								}else{
									$date1 = mysqli_real_escape_string($db, date("Y-m-d"));
									$date2 = mysqli_real_escape_string($db, date("Y-m-d"));
									$mm = "AND date BETWEEN '$date1' AND '$date2'";
								}


								
								
								
								$login = $_SESSION['login'];
								
								$sql = "SELECT finaltotal AS totalpurchases, customer, custGivenAmount, city, state, date, transaction, openingBalance, id, returnStatus, refId, fullPayment, partialPayment, finaltotal as total FROM invoices WHERE login='$login' $dd AND transaction='In' AND status='1' $c $mm";
								$sno = 0;
								$get = mysqli_query($db, $sql);
								$openBalance = true;
								$count = mysqli_num_rows($get);
								$tot = 0;
								$paidd = 0;
								$pendd = 0;
								$openingBalance = 0;
								$TotalCurrentPending = 0;
								while( $res = mysqli_fetch_array($get) ){

									$sno++;
									$id = $res['id'];
									$fullPayment = $res['fullPayment'];
									$partialPayment = $res['partialPayment'];
									// $totalpurchases = $fullPayment == "Full" ? $res['totalpurchases'] : $partialPayment;
									$totalpurchases = $res['totalpurchases'];
									$total = $res['total'];
									$city = $res['city'];
									$state = $res['state'] ? ", ".$res['state'] : "N/A";
									$customer = $res['customer'] ? $res['customer'] : "N/A";
									$dat = $res['date'];
									$transaction = $res['transaction'];
									$returnStatus = $res['returnStatus'];
									$custGivenAmount = $res['custGivenAmount'] ? "<br><i class='text-primary'>Amount Received ".$res["custGivenAmount"]."</i>" : "";		
	

									$refId = $res['refId'] ? "<i><b style='color:red'> (Ref #".$res['refId'].")</b></i>$custGivenAmount" : "";
									
									
									
									
									$transaction1 = "";
									$transaction2 = "";
									$saletype = "";
									if( $transaction == "In" ){
										$transaction1 = $totalpurchases;
										$saletype = "Sales";
										if( $returnStatus==1 ){
											$transaction1 = "";
											$transaction2 = $totalpurchases;
										}
									}else{
										$transaction2 = $totalpurchases;
										$saletype = "Receipt<br>Sales";
									}
									
									// Check if transaction is `In` or `Out`, If `Out` we should remove from total open balance
									// if( $transaction == "In" ){
									// 		$tot = $tot + $totalpurchases;
									// }else{
									// 	$tot = $tot - $totalpurchases;
									// }	
									
									
									$date = date("d-M-y", strtotime($dat));
									if( $openBalance == true ){
										$openingBalance = $res['openingBalance'];
										// $openText = "<tr>
										// 	<td colspan='8'>Opening Balance: <b>$openingBalance</b></td>
										// </tr>";									
									}
									$openBalance = false; 
									if( $res['refId']>0 ){
										$totalpurchases = 0;
									}
									$paidSoFar = in_array($fullPayment, ["Partial", ""]) ? $partialPayment ? $partialPayment : 0 : $partialPayment + checkPendingBalance($id, $db);

									if( $refId > 0 ){
										$getTransactionDetails = getTransactionDetails($db, $refId);
										$total = $getTransactionDetails[2];
									}


									if( $res['refId'] == 0 ){
										$pendingAmount = $totalpurchases - $paidSoFar;	
									}else{
										$pendingAmount = 0;
									}

									
									$paidSoFar2 = $partialPayment + checkPendingBalance($id, $db);
									
									if( $res['refId'] == 0 ){
										$aa = $totalpurchases - $paidSoFar2;	
									}else{
										$aa = 0;
									}
									$tot = $tot + $totalpurchases;		
									$paidd = $paidd + $paidSoFar;		
									$TotalCurrentPending = $TotalCurrentPending + $aa;		
									// $pendd = $pendd + $pendingAmount;		
									$pendd = $tot - $paidd;		

									// $date = date($res['date'], "y-M-d");
									// echo $openText;	
									echo "
									<tr>
										<td>$date</td>
										<td>$customer<br>$city $state</td>									
										<td>$saletype</td>
										<td>$id$refId</td>
										<td class='bg-warning'>$totalpurchases</td>
										<td>$paidSoFar</td>
										<td>$pendingAmount</td>
										<td class='bg-warning'>$aa</td>

									</tr>";
									
									$openText = "";
								}
								$tott = $tot + $openingBalance ;
								$FinalPaidSoFar = $tot - $TotalCurrentPending;
								
								// echo  "<tr>
								// 		<td colspan='8'>Total: <b>$tot</b>, Paid So far: <b>$paidd</b>, Pending: <b>$pendd</b>, Closed Balance: <b>$tott</b></td>
								// 	</tr>";
									echo  "<tr>
									<td colspan='8'>Total: <b>$tot</b>, Paid So far: <b>$FinalPaidSoFar</b>, Pending: <b>$TotalCurrentPending</b></td>
								</tr>";	
							?>					
						</tbody>
					</table>
							</div>
					</div>
				</div>  
				
				
			</div>
			</div>
		</div>	
	</div>
	<div id='viewfullBill' class='modal fade' role='dialog'>
	<div class='modal-dialog'>
		<div class='modal-content'>
		<div class='modal-header'>
			<button type='button' class='close' data-dismiss='modal'>&times;</button>
			<h4 class='modal-title'>Complete Bill</h4>
		</div>
		<div class='modal-body'>
				<table class='table table-condensed'>
				</table>
				
		</div>
		<div class='modal-footer'>
			<button type='button' class='btn btn-default' data-dismiss='modal'>Close</button>
		</div>
		</div>
	</div>
	</div>
<!-- </div> -->

<script type='text/javascript'>
	$(document).ready(function() {

		// $("#print").click(function(){
		// 	body = $("#body").html();
		// 	printable = $("#printable").html();
		// 	$("#body").html(printable);
		// 	window.print();
		// 	$("#body").html(body);
		// });

		$(document).on("click", "#print", function(){
			$(".printBlock").hide();
			// body = $("#body").html();
			// printable = $("#printable").html();			
			// $("#body").html(printable);
			window.print();
			// $("#body").html(body);
			$(".printBlock").show();
		})

		$("#byselection").html("<?php echo $m; ?>");
		$('#datatables').DataTable({
			"pageLength": 10,
            dom: 'Bfrtip',
            buttons: ['copy','csv','excel','pdf','print']
		});

		
		

	} );

	


</script>


<?php //include("footer.php"); ?>




