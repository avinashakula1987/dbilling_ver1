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
						<th>Date</th>
						<th>Qty</th>
						<th>Total</th>
						<th>Paid</th>						
						<th>< Pending</th>						
						<th>> Pending</th>						
					</thead>
					<tbody>
						<?php 
							$login = $_SESSION['login'];
							$custId = $_GET['id'];
						
							$sql = "SELECT * FROM invoices WHERE customerid='$custId' AND status='1' AND transaction='Out' AND fullPayment!='Full' AND login='$login'";
							$get = mysqli_query($db, $sql);
								$sno = 1;
								$new_PrevBalance = 0;
								$pendingAmount_Final = 0;
								$par_Paid = 0;
								$new_PartialPayment = 0;
								while( $res = mysqli_fetch_array($get) ){
									$id = $res['id'];
									$customer = $res['customer'];
									$mobile = $res['mobile'];
									$info = $res['info'];
									$date = date('d, M Y', strtotime($res['date']));
									$status = $res['status'];
									$total = (float)$res['total'];
									$qty = $res['qty'];
									$payable = (float)$res['finaltotal'];
									$fullPayment = $res['fullPayment'];
									$partialPayment = (float)$res['partialPayment'];									
									$pendingAmount = $res['pendingAmount'];									
									$refId = $res['refId'];		
									$customerInfo = "";
									if( $refId > 0 ){
										$getTransactionDetails = getTransactionDetails($db, $refId);
										$customerInfo = $getTransactionDetails[0].", <br>".$getTransactionDetails[1]."<br><i class='text-danger'>Reference of #$refId</i>";
										$total = $getTransactionDetails[2];
										$par_Paid = $par_Paid + (float)$partialPayment;
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
										$pendingAmount_Final = $pendingAmount_Final + (float)$pendingAmount;
									}
									
									$new_PartialPayment = $new_PartialPayment + (float)$partialPayment;
									
									
									$new_outstandingBalance = $new_PrevBalance - $new_PartialPayment;
									
									if( $fullPayment == "Full" ){
										$rowColor = "#e3f9e3";
									}else{
										$rowColor = "";
									}
									echo "<tr id='row_$id' class='$rowColor' style='background-color:$rowColor'>";
									echo "<td>$id</td>";
									echo "<td>$customerInfo</td>";
									echo "<td>$date</td>";
									echo "<td>$qty</td>";
									echo !$refId ? "<td>$total</td>" : "<td>-</td>";
									echo $paidSoFar ? "<td>".$paidSoFar."</td>" : "<td>-</td>";									
									echo !$refId ? "<td class='text-danger'><strong>$pendingAmount</strong></td>" : "<td>-</td>";
									echo !$refId ? "<td class='text-danger'><strong>$aa</strong></td>" : "<td>-</td>";

									
									echo "</tr>";
									$sno++;
								}
						?>					
					</tbody>
					<tfoot>
						<th>Id</th>
						<th>Customer</th>
						<th>Date</th>
						<th>Qty</th>
						<th>Total</th>
						<th>Paid</th>						
						<th>< Pending</th>						
						<th>> Pending</th>							
						<!-- <th>Actions</th>						 -->
					</tfoot>
				</table>
				<?php 
					// echo $pendingAmount_Final;
					$pendingAmount_Final = $pendingAmount_Final - $par_Paid; 
					// echo $par_Paid;
					echo "Prev Balance: $pendingAmount_Final"; 
					if( $pendingAmount_Final>0 ){

					
				?><br>
				<div class='row'>
					<div class='col-md-3'>
						<input type='text' id='payingBalanceNow' data-amount='<?php echo $pendingAmount_Final; ?>' class='form-control' value='<?php echo $pendingAmount_Final; ?>' />
					</div>	
					<div class='col-md-3'>
						<button id='payBalance' class='btn btn-primary btn-sm'>Pay Balance</button>
					</div>			  
				</div>
				<?php } ?>
			</div>
			
		  </div>
		</div>
	</div>	
</div>



<div id="confirmPaymentsModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Comfirm Payments</h4>
      </div>
      <div class="modal-body" id="confirmPaymentsList">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-success" id="confirmPayments_btn">Confirm</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
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
			
			
			"footerCallback": function ( row, data, start, end, display ) {
            var api = this.api(), data;
 
            // converting to interger to find total
            var intVal = function ( i ) {
                return typeof i === 'string' ?
                    i.replace(/[\$,]/g, '')*1 :
                    typeof i === 'number' ?
                        i : 0;
            };
 
            // computing column Total of the complete result 
            var monTotal = api
                .column( 1 )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 );
				
	    var tueTotal = api
                .column( 2 )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 );
				
            var wedTotal = api
                .column( 3 )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 );
				
	     var thuTotal = api
                .column( 4 )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 );
		 var friTotal = api
                .column( 5 )
                .data()
                .reduce( function (a, b) {
                    return intVal(a) + intVal(b);
                }, 0 );		
						
	    
			
				
            // Update footer by showing the total with the reference of the column index 
	    $( api.column( 0 ).footer() ).html('Total');
            $( api.column( 1 ).footer() ).html(monTotal);
            $( api.column( 2 ).footer() ).html(tueTotal);
            $( api.column( 3 ).footer() ).html(wedTotal);
            $( api.column( 4 ).footer() ).html(thuTotal);
			$( api.column( 5 ).footer() ).html(friTotal);
        }	
			
		} );


		function checkPendings(total){
			let payingAmount = parseFloat(total);
			
			// console.log("payingAmount -> ", payingAmount);
			function pending(p, id){
				let pending = parseFloat(p);
				if( payingAmount>pending ){
					// console.log("11", id);
					// console.log("11 payingAmount", payingAmount);
					// console.log("11 pending", pending);
					payingAmount = payingAmount - pending;
					return {pending:0, paid:pending}
				}else if( payingAmount>=0){
					console.log("22", id);
					if( payingAmount>pending ){
						// console.log("22 payingAmount 2", payingAmount);
						// console.log("22 pending 2", pending);
						payingAmount = payingAmount - pending;
						return {paid:payingAmount}
					}else if( pending>payingAmount ){
						// console.log("22 payingAmount 3", payingAmount);
						// console.log("22 pending 3", pending);
						let aa = pending - payingAmount;
						let pAmount = payingAmount;
						payingAmount = 0;
						return {paid:pAmount, pending:aa}
					}else if( pending==payingAmount ){
						// console.log("22 payingAmount 4", payingAmount);
						// console.log("22 pending 4", pending);
						payingAmount = 0;
						return {pending:0, paid:pending}
					}else{
						// console.log("22 payingAmount 5", payingAmount);
						// console.log("22 pending 5", pending);
						return {paid:pending}
					}
					
					return {paid:payingAmount}
				}else{
					// console.log("33", id);
					payingAmount = pending - payingAmount;
					return {paid:payingAmount}
				}
			}
			return pending;
		}
		// Updating partial payment based on the customer point of view
		let finalList = [];
		let finalId = 0;
		$("#payBalance").click(function(){
			
			let payingBalanceNowActualAmount = parseFloat($('#payingBalanceNow').attr('data-amount'));
			let payingBalanceNow = parseFloat($('#payingBalanceNow').val());
			if( payingBalanceNow <= payingBalanceNowActualAmount ){
				let balCustId = "<?php echo $custId; ?>";
				finalId = balCustId;
				$.post('processing.php', {payingBalanceNowPurchase:payingBalanceNow, balCustId:balCustId}, function(res){		
					let result = JSON.parse(res);
					
					let myPendings = checkPendings(payingBalanceNow);
					let arr = [];
					for (const [key, value] of Object.entries(result[0])) {
						let mypen = myPendings(value, key);
						arr.push({id:key, prepending:value, pending:mypen.pending, paid:mypen.paid, customerId:balCustId});					
					}		
					console.log(arr);		
					let clearedItems = [];
					let partialClearedItems = [];
					let totalCleared = 0;
					// arr.map(( item )=>{
					// 	if( item.pending == 0 && item.prepending==item.paid ){
					// 		clearedItems.push(`<b><i>Vch #${item.id}</i></b> will be completed by clearing <b>${item.paid}</b>`);
					// 		totalCleared = totalCleared+parseFloat(item.paid); 
					// 	}else if( item.paid!=0 && item.pending!=0 ){
					// 		partialClearedItems.push(`<b><i>Vch #${item.id}</i></b> will be partially completed by clearing <b>${item.paid}</b>`);
					// 		totalCleared = totalCleared+parseFloat(item.paid);
					// 	}
					// })

					finalList = arr;
					confirmPaymentsShow(arr);
					$('#confirmPaymentsModal').modal('show');
				});
			}else{
				alert(`Payment should not be greater than Rs. ${payingBalanceNowActualAmount} /-`);
			}
			
		});

		function confirmPaymentsShow(arr){
			let clearedItems = [];
			let partialClearedItems = [];
			let totalCleared = 0;
			arr.map(( item )=>{
				if( item.pending == 0 && item.prepending==item.paid ){
					clearedItems.push(`<b><i>Vch #${item.id}</i></b> will be completed by paying <b>Rs. ${item.paid} /-</b>`);
					totalCleared = totalCleared+parseFloat(item.paid); 
				}else if( item.paid!=0 && item.pending!=0 ){
					partialClearedItems.push(`<b><i>Vch #${item.id}</i></b> will be partially paying by clearing <b>Rs. ${item.paid} /-</b>`);
					totalCleared = totalCleared+parseFloat(item.paid);
				}
			})
			$('#confirmPaymentsList').html(clearedItems.join("<br />")+"<br>"+partialClearedItems.join("<br />")+"<br><br>"+"Total Paying : <b>Rs. "+totalCleared+" /-</b>");
		}

		$(document).on('click', '#confirmPayments_btn', function(){
			$('#confirmPayments_btn').hide();
			$.post('processing.php', {clearningPendingBalancePurchase:finalList, forCustomer:finalId, customerId:finalId}, function(res){	
				$('#confirmPaymentsList').html("<p class='alert alert-success'>Payment Done Successfully !!</p>");
			});
		})
	} );
</script>




<?php //include("footer.php"); ?>




