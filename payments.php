
<?php include("database.php"); ?>
<?php include("session.php"); ?>

<?php include("headpart.php"); ?>



<?php include("navbar.php"); ?>
<link rel='stylesheet' href='datatables/css/jquery.dataTables.min.css'></link>
<link rel='stylesheet' href='datatables/css/buttons.dataTables.min.css'></link>
<script type='text/javascript' src='datatables/js/jquery.dataTables.min.js'></script>
<script type='text/javascript' src='datatables/js/dataTables.buttons.min.js'></script>
<script type='text/javascript' src='datatables/js/buttons.flash.min.js'></script>
<script type='text/javascript' src='datatables/js/pdfmake.min.js'></script>
<script type='text/javascript' src='datatables/js/jszip.min.js'></script>
<script type='text/javascript' src='datatables/js/vfs_fonts.js'></script>
<script type='text/javascript' src='datatables/js/buttons.html5.min.js'></script>
<script type='text/javascript' src='datatables/js/buttons.print.min.js'></script>
<script type='text/javascript' src='datatables/js/sum().js'></script>

<div class='col-md-10'>
	<div class='row'>
		<div class="panel panel-primary mainbody">
		  <div class="panel-heading">
			<h3 class="panel-title">Payments</h3>
		  </div>
		  <div class="panel-body">
			<marquee class='.marquee' scrollamount='12' onmouseenter="this.stop()" onmouseleave="this.start()" style='color:red; font-weight:bold'>Page Under Testing, Please don't disturb any record until testing completed &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Page Under Testing, Please don't disturb any record until testing completed &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Page Under Testing, Please don't disturb any record until testing completed</marquee>
		  <?php include("billing_nav.php"); ?>
			<!-- <ul class="nav nav-tabs">
			   <li role="presentation"><a href="billing.php">Billing</a></li>
			   <li role="presentation"><a href="invoices.php">All Transactions</a></li>
			  <li role="presentation" class="active"><a href="bills.php">Bills</a></li>
			  <li role="presentation"><a href="purchases.php">Purchases</a></li>
			  <li role="presentation"><a href="credits.php">Pending Credits</a></li>
			  <li role="presentation"><a href="completedCredits.php">Completed Credits</a></li>
			  <li role="presentation"><a href="pending_invoices.php">Pending</a></li>
			  <li role="presentation"><a href="failed_invoices.php">Failed</a></li>
			</ul> -->
			
			
			<div class='well'>
				<div class='row'>
			<form action='bills.php' method='get'>
				<div class='form-group col-md-2'>
					<input type='text' name='date1' class='form-control datepicker' autocomplete="off" placeholder='From Date' />
				</div>
				<div class='form-group col-md-2'>
					<input type='text' name='date2' class='form-control datepicker' autocomplete="off" placeholder='To Date' />
				</div>
								
				<div class='form-group col-md-2'>
					<input type='submit' class='form-control btn btn-info' name='submit' value='Search' />
				</div>
			</form>	
		</div>	
		
		
				<table class='display nowrap' id='datatables' cellspacing="0" width="100%">
					<thead>
						<th>Id</th>
						<th>Customer</th>
						<th>Purchase</th>
						<th>Mobile</th>
					</thead>
					<tbody>
						<?php 
								
							$sql = "SELECT * FROM customers ORDER BY id DESC";
							$get = mysqli_query($db, $sql);
								$sno = 1;
								
								while( $res = mysqli_fetch_array($get) ){
									$id = $res['id'];
									$name = $res['name'];
									$mobile = $res['mobile'];
									$type = $res['type'];
									$a = "<a href='payment.php?id=$id'>$name</a>";
									$b = "-";
									if( $type == "customer" ){
										$a = "<a href='payment.php?id=$id'>$name</a>";
										$b = "-";
									}else if( $type == "purchaser" ){
										$a = "-";
										$b = "<a href='payment_purchase.php?id=$id'>Purchase</a></td>";
									}
								
									echo "<tr>";
									echo "<td>$id</td>";
									echo "<td>$a</td>";
									echo "<td>$b</td>";
									echo "<td>$mobile</td>";
									// echo "<td><a class='btn btn-xs btn-warning' href='modifyInvoice.php?modifyInvoice=$id'><span class='glyphicon glyphicon-pencil'></span></a> ";
									// echo $login=="retail" ? "<a class='btn btn-xs btn-info' href='retailEstimate.php?estimateId=$id'><span class='glyphicon glyphicon-th-list'></span></a> " : "<a class='btn btn-xs btn-info' href='invoice.php?invoice=$id'><span class='glyphicon glyphicon glyphicon-paperclip'></span></a> ";									
									// echo !$refId ? "<a class='btn btn-xs btn-primary' href='partialPayment.php?invoice=$id'><span class='glyphicon glyphicon-plus'></span></a>" : "<a class='btn btn-xs btn-default' disabled ><span class='glyphicon glyphicon-plus'></span></a>";
									// if( $_SESSION['loginid'] == 1 ){
									// 	echo " <a href='$id' class='btn btn-xs btn-danger del_invoice' onclick='return false;'><span class='glyphicon glyphicon-remove'></span></a></td>";
									// }
									echo "</tr>";
									$sno++;
								}
						?>					
					</tbody>
					<tfoot>
						<th>Id</th>
						<th>Customer</th>
						<th>Purchase</th>
						<th>Mobile</th>
					</tfoot>
				</table>
		  
			</div>
			
		  </div>
		</div>
	</div>	
</div>


<script type='text/javascript'>
	$(document).ready(function() {
		$('#datatables').DataTable( {
			 dom: 'Bfrtip',
			 buttons: [
				'copy', 'csv', 'excel', 'pdf', 'print'
			],
			
			
			
			
			
		} );

		$('.marquee').marquee({ duplicated: true, startVisible: true});
	} );
</script>


<?php //include("footer.php"); ?>




