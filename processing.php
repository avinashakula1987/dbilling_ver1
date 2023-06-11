<?php
	include("database.php");
	session_start();
	// check if the product already existed so far while inserting new product

	function customernameById($id, $db){
		$sql = "SELECT name, mobile, state, city, address FROM customers WHERE id='$id'";
		$existance_check = mysqli_query($db, $sql);
		$r = mysqli_fetch_array($existance_check);
		$name = $r['name'];
		$mobile = $r['mobile'];
		$state = $r['state'];
		$city = $r['city'];
		$address = $r['address'];
		$array = array();
		array_push($array, $name);
		array_push($array, $mobile);
		array_push($array, $state);
		array_push($array, $city);
		array_push($array, $address);
		return $array;
	}
	function alreadyexisted($product, $db){
		$product = $product;		
		$sql = "SELECT COUNT(*) AS count FROM stock WHERE name='$product'";
		$existance_check = mysqli_query($db, $sql);
		$r = mysqli_fetch_array($existance_check);
		$count = $r['count'];
		if( $count == 0 ){
			return true;			
		}else{
			return false;
		}
	}

	function alreadyexistedQty($qty, $db){
		$qty = $qty;		
		$sql = "SELECT COUNT(*) AS count FROM quantity WHERE quantity='$qty'";
		$existance_check = mysqli_query($db, $sql);
		$r = mysqli_fetch_array($existance_check);
		$count = $r['count'];
		if( $count == 0 ){
			return true;			
		}else{
			return false;
		}
	}


	
	function updateexisted($category, $product, $quantity, $db){				
		$sql = "UPDATE stock SET qty=qty+'$quantity' WHERE category='$category' AND name='$product'";
		$update = mysqli_query($db, $sql);
		if( $update ){
			return true;			
		}else{
			return false;
		}
	}
	function increaseOpenBalance($total, $db){				
		$sql = "UPDATE openingbalance SET `balance`=`balance`+'$total' WHERE id='1'";
		$update = mysqli_query($db, $sql);
		if( $update ){
			return true;			
		}else{
			return false;
		}
	}
	function decreaseOpenBalance($total, $db){				
		$sql = "UPDATE openingbalance SET `balance`=`balance`-'$total' WHERE id='1'";
		$update = mysqli_query($db, $sql);
		if( $update ){
			return true;			
		}else{
			return false;
		}
	}
	
	
	if( isset($_POST['update_qty']) && isset($_POST['update_product']) && isset($_POST['update_categoryid']) ){
		$category = mysqli_real_escape_string($db, $_POST['update_categoryid']);
		$product = mysqli_real_escape_string($db, $_POST['update_product']);
		$qty = mysqli_real_escape_string($db, $_POST['update_qty']);
		if( updateexisted($category, $product, $qty, $db) ){
			echo "Stock also updated!";
		}else{
			echo "Stock also not updated!";
		}
		exit();
	}
	
	if( isset($_POST['createcategory']) ){
		$category = mysqli_real_escape_string($db, $_POST['createcategory']);		
		$sql = "SELECT COUNT(*) AS count FROM categories WHERE name='$category'";
		$existance_check = mysqli_query($db, $sql);
		$r = mysqli_fetch_array($existance_check);
		$count = $r['count'];
		if( $count == 0 ){
			$sql2 = "INSERT INTO categories (name, status) VALUES('$category', '1')";
			$insert = mysqli_query($db, $sql2);
			if( $insert ){
				echo true;
			}else{
				echo "Try again!";
			}
		}else{
			echo "Category already existed!";
		}
		exit();
	}


	if( isset($_POST['musername']) ){
		$musername = mysqli_real_escape_string($db, $_POST['musername']);
		$mpassword = mysqli_real_escape_string($db, $_POST['mpassword']);
		$mname = mysqli_real_escape_string($db, $_POST['mname']);
		
		$sql = "SELECT COUNT(*) AS count FROM admin WHERE username='$musername'";
		$existance_check = mysqli_query($db, $sql);
		$r = mysqli_fetch_array($existance_check);
		$count = $r['count'];
		if( $count == 0 ){
			$sql2 = "INSERT INTO admin (username, password, name, type, status, created, attempts) VALUES('$musername', '$mpassword', '$mname', 'moderator', '0', '".date('Y-m-d')."', '0')";
			$insert = mysqli_query($db, $sql2);
			if( $insert ){
				echo true;
			}else{
				echo "Try again!";
			}
		}else{
			echo "Category already existed!";
		}
		exit();
	}
	
	if( isset($_POST['customer_mobile']) ){
		
		$customer_customerType = mysqli_real_escape_string($db, $_POST['customer_customerType']);
		$customer_mobile = mysqli_real_escape_string($db, $_POST['customer_mobile']);
		$customer_name = mysqli_real_escape_string($db, $_POST['customer_name']);
		$customer_address = mysqli_real_escape_string($db, $_POST['customer_address']);
		$customer_gstin = mysqli_real_escape_string($db, $_POST['customer_gstin']);
		$customer_state = mysqli_real_escape_string($db, $_POST['customer_state']);
		$customer_pincode = mysqli_real_escape_string($db, $_POST['customer_pincode']);
		$customer_city = mysqli_real_escape_string($db, $_POST['customer_city']);
		
		$sql = "SELECT COUNT(*) AS count FROM customers WHERE mobile='$customer_mobile'";
		$existance_check = mysqli_query($db, $sql);
		$r = mysqli_fetch_array($existance_check);
		$count = $r['count'];
		if( $count == 0 ){
			$sql2 = "INSERT INTO customers (name, mobile, address, gst, state, pincode, city, type) VALUES('$customer_name', '$customer_mobile', '$customer_address', '$customer_gstin', '$customer_state', '$customer_pincode', '$customer_city', '$customer_customerType')";
			$insert = mysqli_query($db, $sql2);
			if( $insert ){
				echo true;
			}else{
				echo "Try again!";
			}
		}else{
			echo "Customer already existed!";
		}
		exit();
	}

	if( isset($_POST['newcustomerCreate']) ){
		$customer_name = mysqli_real_escape_string($db, $_POST['newcustomerCreate']);

		$customer_mobile = mysqli_real_escape_string($db, $_POST['mobile']);
		$customer_address = mysqli_real_escape_string($db, $_POST['address']);
		$customer_gstin = mysqli_real_escape_string($db, $_POST['gst']);
		$customer_state = mysqli_real_escape_string($db, $_POST['state']);
		$customer_pincode = mysqli_real_escape_string($db, $_POST['pincode']);
		$customer_city = mysqli_real_escape_string($db, $_POST['city']);
		
		$sql = "SELECT COUNT(*) AS count FROM customers WHERE mobile='$customer_mobile'";
		$existance_check = mysqli_query($db, $sql);
		$r = mysqli_fetch_array($existance_check);
		$count = $r['count'];
		if( $count == 0 ){
			$sql2 = "INSERT INTO customers (name, mobile, address, gst, state, pincode, city) VALUES('$customer_name', '$customer_mobile', '$customer_address', '$customer_gstin', '$customer_state', '$customer_pincode', '$customer_city')";
			$insert = mysqli_query($db, $sql2);
			if( $insert ){
				echo mysqli_insert_id($db);
			}else{
				echo "Try again!";
			}
		}else{
			echo "Customer already existed!";
		}
		exit();
	}

	if( isset($_POST['vehicleno']) ){
		$vehicleno = mysqli_real_escape_string($db, $_POST['vehicleno']);
		$vehiclename = mysqli_real_escape_string($db, $_POST['vehiclename']);
		$description = mysqli_real_escape_string($db, $_POST['description']);
		
		$sql = "SELECT COUNT(*) AS count FROM vehicles WHERE vehicleno='$vehicleno'";
		$existance_check = mysqli_query($db, $sql);
		$r = mysqli_fetch_array($existance_check);
		$count = $r['count'];
		if( $count == 0 ){
			$sql2 = "INSERT INTO vehicles (vehiclename, vehicleno, description) VALUES('$vehiclename', '$vehicleno', '$description')";
			$insert = mysqli_query($db, $sql2);
			if( $insert ){
				echo true;
			}else{
				echo "Try again!";
			}
		}else{
			echo "Vehicle Number already existed!";
		}
		exit();
	}
	if( isset($_POST['driverno']) ){
		$driverno = mysqli_real_escape_string($db, $_POST['driverno']);
		$drivername = mysqli_real_escape_string($db, $_POST['drivername']);
		$description = mysqli_real_escape_string($db, $_POST['description']);
		
		$sql = "SELECT COUNT(*) AS count FROM drivers WHERE driverno='$driverno'";
		$existance_check = mysqli_query($db, $sql);
		$r = mysqli_fetch_array($existance_check);
		$count = $r['count'];
		if( $count == 0 ){
			$sql2 = "INSERT INTO drivers (drivername, driverno, description) VALUES('$drivername', '$driverno', '$description')";
			$insert = mysqli_query($db, $sql2);
			if( $insert ){
				echo true;
			}else{
				echo "Try again!";
			}
		}else{
			echo "Driver Number already existed!";
		}
		exit();
	}
	
	
	if( isset($_POST['updatecreatecategory']) && isset($_POST['update_categoryid']) ){
		$updatecreatecategory = mysqli_real_escape_string($db, $_POST['updatecreatecategory']);
		$update_categoryid = mysqli_real_escape_string($db, $_POST['update_categoryid']);		
		$sql = "UPDATE categories SET name='$updatecreatecategory' WHERE id='$update_categoryid'";
		$update = mysqli_query($db, $sql);
		if( $update ){
			echo true;
		}else{
			echo false;
		}		
		exit();
	}
	
	if( isset($_POST['newusername_value']) && isset($_POST['newname_value']) ){
		$newusername_value = mysqli_real_escape_string($db, $_POST['newusername_value']);
		$newname_value = mysqli_real_escape_string($db, $_POST['newname_value']);
		$newpassword_value = mysqli_real_escape_string($db, $_POST['newpassword_value']);		
		$sql = "UPDATE admin SET name='$newname_value', password='$newpassword_value' WHERE username='$newusername_value'";
		$update = mysqli_query($db, $sql);
		if( $update ){
			echo true;
		}else{
			echo false;
		}		
		exit();
	}
	
	
	if( isset($_POST['category_statusstate']) && isset($_POST['category_statusid']) ){
		$category_statusstate = mysqli_real_escape_string($db, $_POST['category_statusstate']);
		$category_statusid = mysqli_real_escape_string($db, $_POST['category_statusid']);
		$sql = "UPDATE categories SET status='$category_statusstate' WHERE id='$category_statusid'";
		$update = mysqli_query($db, $sql);
		if( $update ){
			echo true;
		}else{
			echo false;
		}		
		exit();
	}
	if( isset($_POST['mcategory_statusstate']) && isset($_POST['mcategory_statusid']) ){
		$category_statusstate = mysqli_real_escape_string($db, $_POST['mcategory_statusstate']);
		$category_statusid = mysqli_real_escape_string($db, $_POST['mcategory_statusid']);
		$sql = "UPDATE admin SET status='$category_statusstate' WHERE id='$category_statusid'";
		$update = mysqli_query($db, $sql);
		if( $update ){
			echo true;
		}else{
			echo false;
		}		
		exit();
	}
	
	
	if( isset($_POST['deletecategory'])){
		$deletecategory = mysqli_real_escape_string($db, $_POST['deletecategory']);
		$sql = "DELETE FROM categories WHERE id='$deletecategory'";
		$delete = mysqli_query($db, $sql);
		if( $delete ){
			echo true;
		}else{
			echo false;
		}		
		exit();
	}
	if( isset($_POST['deletemoderator'])){
		$deletemoderator = mysqli_real_escape_string($db, $_POST['deletemoderator']);
		$sql = "DELETE FROM admin WHERE id='$deletemoderator'";
		$delete = mysqli_query($db, $sql);
		if( $delete ){
			echo true;
		}else{
			echo false;
		}		
		exit();
	}
	if( isset($_POST['delcustomer'])){
		$delcustomer = mysqli_real_escape_string($db, $_POST['delcustomer']);
		$sql = "DELETE FROM customers WHERE id='$delcustomer'";
		$delete = mysqli_query($db, $sql);
		if( $delete ){
			echo true;
		}else{
			echo false;
		}		
		exit();
	}
	if( isset($_POST['delvehicle'])){
		$delvehicle = mysqli_real_escape_string($db, $_POST['delvehicle']);
		$sql = "DELETE FROM vehicles WHERE id='$delvehicle'";
		$delete = mysqli_query($db, $sql);
		if( $delete ){
			echo true;
		}else{
			echo false;
		}		
		exit();
	}
	if( isset($_POST['deldriver'])){
		$deldriver = mysqli_real_escape_string($db, $_POST['deldriver']);
		$sql = "DELETE FROM drivers WHERE id='$deldriver'";
		$delete = mysqli_query($db, $sql);
		if( $delete ){
			echo true;
		}else{
			echo false;
		}		
		exit();
	}
	
	if( isset($_POST['listcategory_did'])){
		$listcategory_did = mysqli_real_escape_string($db, $_POST['listcategory_did']);
		$listcategory_did_name = mysqli_real_escape_string($db, $_POST['listcategory_did_name']);

		if( $listcategory_did_name == "stock" ){
			$table = "stock";
		}else if($listcategory_did_name == "measurements"){
			$table = "quantity";

		}


		$sql = "DELETE FROM $table WHERE id='$listcategory_did'";
		mysqli_query($db, $sql);
		echo true;			
		exit();
	}
	if( isset($_POST['delinvoiceid'])){
		$listcategory_did = mysqli_real_escape_string($db, $_POST['delinvoiceid']);
		$sql = "DELETE FROM invoices WHERE id='$listcategory_did'";
		mysqli_query($db, $sql);
		echo true;				
		exit();
	}
	
	// creating new stock starts
	if( isset($_POST['billingInfos']) ){
		$billingInfos = json_decode($_POST['billingInfos']);
		$billTotal = mysqli_real_escape_string($db, $_POST['billTotal']);
		$customerId = mysqli_real_escape_string($db, $_POST['customerId']);
		$billTotalQty = mysqli_real_escape_string($db, $_POST['billTotalQty']);
		$billFinalTotal = mysqli_real_escape_string($db, $_POST['billFinalTotal']);
		$customername = mysqli_real_escape_string($db, $_POST['customername']);
		$mobile = mysqli_real_escape_string($db, $_POST['mobile']);
		$state = mysqli_real_escape_string($db, $_POST['state']);
		$city = mysqli_real_escape_string($db, $_POST['city']);
		$address = mysqli_real_escape_string($db, $_POST['address']);
		$pincode = mysqli_real_escape_string($db, $_POST['pincode']);
		$gst = mysqli_real_escape_string($db, $_POST['gst']);
		$dispatchThrough = mysqli_real_escape_string($db, $_POST['dispatchThrough']);
		$vehicle = mysqli_real_escape_string($db, $_POST['vehicle']);
		$transaction = mysqli_real_escape_string($db, $_POST['transaction']);
		$openingBalance = mysqli_real_escape_string($db, $_POST['openingBalance']);
		$fullPayment = mysqli_real_escape_string($db, $_POST['fullPayment']);
		$finalBillAmount = mysqli_real_escape_string($db, $_POST['finalBillAmount']);
		$partialPayment = mysqli_real_escape_string($db, $_POST['partialPayment']);
		$returnStatus = mysqli_real_escape_string($db, $_POST['returnStatus']);
		$finalPendingBillAmount = mysqli_real_escape_string($db, $_POST['finalPendingBillAmount']);
		$hamaliCharges = mysqli_real_escape_string($db, $_POST['hamaliCharges']);

		if( $fullPayment == "Full" ){
			$partialPayment = $finalBillAmount;
		}
		
		$billingInfos2 = serialize($billingInfos);
		$login = $_SESSION['login'];
		if( $login ){
			$sql = "INSERT INTO invoices (customer, customerid, mobile, info, total, qty, finaltotal, date, status, state, city, address, pin, gst, dispatchThrough, vehicle, transaction, openingBalance, login, fullPayment, partialPayment, returnStatus, pendingAmount, hamaliCharges) VALUES('$customername', '$customerId', '$mobile', '$billingInfos2', '$billTotal', '$billTotalQty', '$billFinalTotal', '".date('Y-m-d')."', '0', '$state', '$city', '$address', '$pincode', '$gst', '$dispatchThrough', '$vehicle', '$transaction', '0', '$login', '$fullPayment', '$partialPayment', '$returnStatus', '$finalPendingBillAmount', '$hamaliCharges')";
			$data = mysqli_query($db, $sql);
			setcookie("modifyInvoice", $db->insert_id);
			echo true;
		}else{
			echo false;
		}
		
		
		exit();
	}
	// creating new stock ends
	// update invoice starts
	if( isset($_POST['updateBillingInfos']) ){
		$billingInfos = json_decode($_POST['updateBillingInfos']);
		$oldInvoiceId = mysqli_real_escape_string($db, $_POST['oldInvoiceId']);
		$billTotal = mysqli_real_escape_string($db, $_POST['billTotal']);
		$billTotalQty = mysqli_real_escape_string($db, $_POST['billTotalQty']);
		$billFinalTotal = mysqli_real_escape_string($db, $_POST['billFinalTotal']);
		$billingInfos2 = serialize($billingInfos);
		$customername = mysqli_real_escape_string($db, $_POST['customername']);
		$customerId = mysqli_real_escape_string($db, $_POST['customerId']);
		$mobile = mysqli_real_escape_string($db, $_POST['mobile']);
		$openingBalance = mysqli_real_escape_string($db, $_POST['openingBalance']);
		$returnStatus = mysqli_real_escape_string($db, $_POST['returnStatus']);
		$transaction = mysqli_real_escape_string($db, $_POST['transaction']);
		$fullPayment = mysqli_real_escape_string($db, $_POST['fullPayment']);
		$partialPayment = mysqli_real_escape_string($db, $_POST['partialPayment']);
		$finalBillAmount = mysqli_real_escape_string($db, $_POST['finalBillAmount']);
		$hamaliCharges = mysqli_real_escape_string($db, $_POST['hamaliCharges']);
        if($fullPayment=="Full"){
            $partialPayment = $finalBillAmount;
        }
		
		// $openBal = $billFinalTotal + $openingBalance;
		// Check if qty existed
		//$qtyvalidation = qtyUpdation($billingInfos);
		$finalPendingBillAmount = mysqli_real_escape_string($db, $_POST['finalPendingBillAmount']);

		$login = $_SESSION['login'];
		if( $login ){
			$sql = "UPDATE invoices SET hamaliCharges='$hamaliCharges', returnStatus='$returnStatus', customer='$customername', customerid='$customerId', fullPayment='$fullPayment', partialPayment='$partialPayment', mobile='$mobile', info='$billingInfos2', finaltotal='$billFinalTotal', total='$billTotal', qty='$billTotalQty', status='1', openingBalance='$openingBalance', pendingAmount='$finalPendingBillAmount' WHERE id='$oldInvoiceId'";
			mysqli_query($db, $sql);
			setcookie("modifyInvoice", "",  time() - 3600);
			// reduceQuantity
			if( $transaction == "Out" ){
				// echo decreaseOpenBalance($billFinalTotal, $db);	
				echo true;
			}else{		
				if($transaction == "In"){	
					if( $fullPayment == "Partial" ){
						echo increaseOpenBalance($partialPayment, $db);						
					}else{
						echo increaseOpenBalance($billFinalTotal, $db);
					}
				}
			}
		}else{
			echo false;
		}
			
		exit();
	}
	// udpatge invoice ends
	// cancel invoice starts
	if( isset($_POST['cancelInvoiceId']) ){
		$cancelInvoiceId = mysqli_real_escape_string($db, $_POST['cancelInvoiceId']);
		
		$sql = "UPDATE invoices SET status='2' WHERE id='$cancelInvoiceId'";
		$insert = mysqli_query($db, $sql);
		
		setcookie("modifyInvoice", "",  time() - 3600);
		echo true;			
				
		exit();
	}
	// cancel invoice ends


	// partial payment clearance
	if( isset($_POST['clearance_refId']) ){
		$clearance_refId = mysqli_real_escape_string($db, $_POST['clearance_refId']);
		$clearance_transaction = mysqli_real_escape_string($db, $_POST['clearance_transaction']);
		$clearance_actualAmount = mysqli_real_escape_string($db, $_POST['clearance_actualAmount']);
		$clearance_pendingAmount = mysqli_real_escape_string($db, $_POST['clearance_pendingAmount']);
		$clearance_payingAmount = mysqli_real_escape_string($db, $_POST['clearance_payingAmount']);		
		$clearance_pendingStatus = mysqli_real_escape_string($db, $_POST['clearance_pendingStatus']);
		$finalPendingBillAmount2 = mysqli_real_escape_string($db, $_POST['finalPendingBillAmount2']);
		$customer = mysqli_real_escape_string($db, $_POST['customer']);
		$customerId = mysqli_real_escape_string($db, $_POST['customerId']);
		
		$customername = customernameById($customerId, $db);
		$login = $_SESSION['login'];
		$sql = "INSERT INTO invoices (refId, finaltotal, partialPayment, transaction, status, login, date, pendingAmount, customer, customerid, mobile, state, city, address) VALUES('$clearance_refId', '$clearance_pendingAmount', '$clearance_payingAmount', '$clearance_transaction', '1', '$login', '".date('Y-m-d')."', '$finalPendingBillAmount2', '".$customername[0]."', '$customerId', '".$customername[1]."', '".$customername[2]."', '".$customername[3]."', '".$customername[4]."')";
		$insert = mysqli_query($db, $sql);	
		
		if( $clearance_pendingStatus == 1 ){
			mysqli_query($db, "UPDATE invoices SET clearanceStatus='1', `pendingAmount`='0' WHERE id='$clearance_refId'");
			increaseOpenBalance($clearance_payingAmount, $db);	
		}else{
			increaseOpenBalance($clearance_payingAmount, $db);
			if( $_POST['finalPendingBillAmount2'] > 0 ){
				$sql2 = "UPDATE invoices SET `pendingAmount`='$finalPendingBillAmount2' WHERE id='$clearance_refId'";
				mysqli_query($db, $sql2);
			}
		}
		echo true;							
		exit();
	}
	// creating new stock starts


	// updating final Partial Code starts
	if( isset($_POST['payingBalanceNow']) ){
		$balCustId = mysqli_real_escape_string($db, $_POST['balCustId']);
		$payingBalanceNow = mysqli_real_escape_string($db, $_POST['payingBalanceNow']);

		$login = $_SESSION['login'];
		
		$sql = "SELECT * FROM invoices WHERE customerid='$balCustId' AND transaction='In' AND fullPayment!='Full' AND status='1' AND login='$login'";
		$get = mysqli_query($db, $sql);	
		$ids = [];
		$arr = [];
		while( $res = mysqli_fetch_array($get) ){
			$clearanceStatus = $res['clearanceStatus'];
			$refId = $res['refId'];
			$finalTotal = (float)$res['finaltotal'];
			$pendingAmount = $res['pendingAmount'];
			$partialPayment = (float)$res['partialPayment'];
			$id = $res['id'];
			
			// array_push($ids, $finalTotal);
			// array_push($ids, $partialPayment);
			
			if( $clearanceStatus != 1 ){
				if( $refId == 0 ){
					$arr[$id] = $pendingAmount;
				}
			}			
		}
		array_push($ids, $arr);
		
		echo json_encode($ids);						
		exit();
	}

	if( isset($_POST['payingBalanceNowPurchase']) ){
		$balCustId = mysqli_real_escape_string($db, $_POST['balCustId']);
		$payingBalanceNow = mysqli_real_escape_string($db, $_POST['payingBalanceNowPurchase']);
		
		$sql = "SELECT * FROM invoices WHERE customerid='$balCustId' AND transaction='Out' AND fullPayment!='Full' AND status='1'";
		$get = mysqli_query($db, $sql);	
		$ids = [];
		$arr = [];
		while( $res = mysqli_fetch_array($get) ){
			$clearanceStatus = $res['clearanceStatus'];
			$refId = $res['refId'];
			$finalTotal = (float)$res['finaltotal'];
			$pendingAmount = $res['pendingAmount'];
			$partialPayment = (float)$res['partialPayment'];
			$id = $res['id'];
			
			// array_push($ids, $finalTotal);
			// array_push($ids, $partialPayment);
			
			if( $clearanceStatus != 1 ){
				if( $refId == 0 ){
					$arr[$id] = $pendingAmount;
				}
			}			
		}
		array_push($ids, $arr);
		
		echo json_encode($ids);						
		exit();
	}

	

	// Clearing pending balances starts
	if( isset($_POST['clearningPendingBalance']) ){
		$data = $_POST['clearningPendingBalance'];
		$login = $_SESSION['login'];
		$customer = $_POST['customerId'];

		$customername = customernameById($customer, $db);
		for( $i=0; $i<=count($data); $i++){			
			$clearance_refId = $data[$i]['id'];
			$clearance_payingAmount = $data[$i]['paid'];
			$finalPendingBillAmount2 = $data[$i]['pending'];
			$amountReceivedFromCustomer = $data[$i]['amountReceivedFromCustomer'];
			if( $data[$i]['pending'] == 0 && ($data[$i]['prepending'] == $data[$i]['paid']) ){
				if( $clearance_payingAmount > 0 ){
					$sql = "INSERT INTO invoices (refId, finaltotal, partialPayment, transaction, status, login, date, pendingAmount, customer, customerid, mobile, state, city, address, custGivenAmount) VALUES('$clearance_refId', '', '$clearance_payingAmount', 'In', '1', '$login', '".date('Y-m-d')."', '$finalPendingBillAmount2', '".$customername[0]."', '$customer', '".$customername[1]."', '".$customername[2]."', '".$customername[3]."', '".$customername[4]."', '$amountReceivedFromCustomer')";
					if( mysqli_query($db, $sql) ){
						$sql2 = "UPDATE invoices SET `clearanceStatus`='1', `pendingAmount`='$finalPendingBillAmount2' WHERE id='$clearance_refId'";
						if( mysqli_query($db, $sql2) or die(mysqli_error($db)) ){
							echo "Success - ".$clearance_refId." >> $sql2<br />";
						}
					}else{
						echo "Failed";
					}
				}
				
				

			}else if( $data[$i]['pending'] != 0 && $data[$i]['paid'] != 0 ){
				$sql = "INSERT INTO invoices (refId, finaltotal, partialPayment, transaction, status, login, date, pendingAmount, customer, customerid, mobile, state, city, address, custGivenAmount) VALUES('$clearance_refId', '', '$clearance_payingAmount', 'In', '1', '$login', '".date('Y-m-d')."', '$finalPendingBillAmount2', '".$customername[0]."', '$customer', '".$customername[1]."', '".$customername[2]."', '".$customername[3]."', '".$customername[4]."', '$amountReceivedFromCustomer')";
				if( mysqli_query($db, $sql) ){
					$sql2 = "UPDATE invoices SET `pendingAmount`='$finalPendingBillAmount2' WHERE id='$clearance_refId'";
					if( mysqli_query($db, $sql2) ){
						echo "Partial - ".$clearance_refId." >> $sql2<br />";
					}
				}
			}else if( $data[$i]['pending'] == 0 && $data[$i]['paid']==0 ){
				echo "Not Paid - ".$clearance_refId;
			}
			// id, prepending, pending, paid

		}
	}
	if( isset($_POST['clearningPendingBalancePurchase']) ){
		$data = $_POST['clearningPendingBalancePurchase'];
		$login = $_SESSION['login'];
		$customer = $_POST['customerId'];

		$customername = customernameById($customer, $db);
		for( $i=0; $i<=count($data); $i++){			
			$clearance_refId = $data[$i]['id'];
			$clearance_payingAmount = $data[$i]['paid'];
			$finalPendingBillAmount2 = $data[$i]['pending'];
			if( $data[$i]['pending'] == 0 && ($data[$i]['prepending'] == $data[$i]['paid']) ){
				if( $clearance_payingAmount > 0 ){
					$sql = "INSERT INTO invoices (refId, finaltotal, partialPayment, transaction, status, login, date, pendingAmount, customer, customerid, mobile, state, city, address) VALUES('$clearance_refId', '', '$clearance_payingAmount', 'Out', '1', '$login', '".date('Y-m-d')."', '$finalPendingBillAmount2', '".$customername[0]."', '$customer', '".$customername[1]."', '".$customername[2]."', '".$customername[3]."', '".$customername[4]."')";
					if( mysqli_query($db, $sql) ){
						$sql2 = "UPDATE invoices SET `clearanceStatus`='1', `pendingAmount`='$finalPendingBillAmount2' WHERE id='$clearance_refId'";
						if( mysqli_query($db, $sql2) or die(mysqli_error($db)) ){
							echo "Success - ".$clearance_refId." >> $sql2<br />";
						}
					}else{
						echo "Failed";
					}
				}
				
				

			}else if( $data[$i]['pending'] != 0 && $data[$i]['paid'] != 0 ){
				$sql = "INSERT INTO invoices (refId, finaltotal, partialPayment, transaction, status, login, date, pendingAmount, customer, customerid, mobile, state, city, address) VALUES('$clearance_refId', '', '$clearance_payingAmount', 'Out', '1', '$login', '".date('Y-m-d')."', '$finalPendingBillAmount2', '$customername[0]', '$customer', '".$customername[1]."', '".$customername[2]."', '".$customername[3]."', '".$customername[4]."')";
				if( mysqli_query($db, $sql) ){
					$sql2 = "UPDATE invoices SET `pendingAmount`='$finalPendingBillAmount2' WHERE id='$clearance_refId'";
					if( mysqli_query($db, $sql2) ){
						echo "Partial - ".$clearance_refId." >> $sql2<br />";
					}
				}
			}else if( $data[$i]['pending'] == 0 && $data[$i]['paid']==0 ){
				echo "Not Paid - ".$clearance_refId;
			}
			// id, prepending, pending, paid

		}
	}
	// Clearing pending balances ends

	
	// updating final Partial Code ends
	if( isset($_POST['newstock_productname']) ){
		
		$newstock_productname = mysqli_real_escape_string($db, $_POST['newstock_productname']);
		$newstock_price = mysqli_real_escape_string($db, $_POST['newstock_price']);

		
		

			$purchase_status = true;
			$check = alreadyexisted($newstock_productname, $db);
						
			if( $check ){
				// insert into stock other wise go to else and update the stock qty only
				$sql2 = "INSERT INTO stock (name, actualprice, date, status) VALUES('$newstock_productname', '$newstock_price', ".date('Y-m-d').", '1')";
				$insert2 = mysqli_query($db, $sql2);
				if( $insert2 ){
					$stock_status = true;
				}else{
					$stock_status = true;
				}
			}else{
				$stock_status = false;
			}
		
		$array = array("stock"=>$stock_status);
		echo json_encode($array);
		exit();
	}
	// creating new stock ends


	// New Quantity starts
	if( isset($_POST['new_quantity']) ){
		
		$new_quantity = mysqli_real_escape_string($db, $_POST['new_quantity']);

		
		

			
			$check = alreadyexistedQty($new_quantity, $db);
						
			if( $check ){
				// insert into stock other wise go to else and update the stock qty only
				$sql2 = "INSERT INTO quantity (quantity, status) VALUES('$new_quantity', '1')";
				$insert2 = mysqli_query($db, $sql2);
				if( $insert2 ){
					$stock_status = true;
				}else{
					$stock_status = true;
				}
			}else{
				$stock_status = false;
			}
		
		$array = array("quantity"=>$stock_status);
		echo json_encode($array);
		exit();
	}
	// New Quantity ends
	
	// update old stock starts
	if( isset($_POST['updatestock_productid']) ){
		$updatestock_productid = mysqli_real_escape_string($db, $_POST['updatestock_productid']);
		$updatestock_productname = mysqli_real_escape_string($db, $_POST['updatestock_stock']);
		$updatestock_price = mysqli_real_escape_string($db, $_POST['updatestock_price']);		
		$sql = "UPDATE stock SET name='$updatestock_productname', actualprice='$updatestock_price' WHERE id='$updatestock_productid'";
		$qry = mysqli_query($db, $sql);
		if( $qry ){
			$array = array("stock"=>true);
		}else{
			$array = array("stock"=>false);
		}
		
		echo json_encode($array);
		
		exit();
	}
	// update old stock ends

	
	// update old stock starts
	if( isset($_POST['update_quantity']) ){
		$update_qtyid = mysqli_real_escape_string($db, $_POST['update_qtyid']);
		$update_quantity = mysqli_real_escape_string($db, $_POST['update_quantity']);
		$sql = "UPDATE quantity SET quantity='$update_quantity' WHERE id='$update_qtyid'";
		$qry = mysqli_query($db, $sql);
		if( $qry ){
			$array = array("stock"=>true);
		}else{
			$array = array("stock"=>false);
		}
		
		echo json_encode($array);
		
		exit();
	}
	// update old stock ends

	
	// Inactivate stock starts
	if( isset($_POST['listitem_inactivateid']) ){
		$listitem_inactivateid = mysqli_real_escape_string($db, $_POST['listitem_inactivateid']);
		$listitemstate_inactivateid = mysqli_real_escape_string($db, $_POST['listitemstate_inactivateid']);
		$listitem_inactivate_name = mysqli_real_escape_string($db, $_POST['listitem_inactivate_name']);

		if( $listitem_inactivate_name == "stock" ){
			$table = "stock";
		}else if($listitem_inactivate_name == "measurements"){
			$table = "quantity";

		}
		$sql = "UPDATE $table SET status='$listitemstate_inactivateid' WHERE id='$listitem_inactivateid'";
		$update =mysqli_query($db, $sql);		
		echo true;		
		exit();
	}
	// Inactivate stock ends
	// Activate stock starts
	if( isset($_POST['listitem_activateid']) ){
		$listitem_activateid = mysqli_real_escape_string($db, $_POST['listitem_activateid']);
		$listitemstate_activateid = mysqli_real_escape_string($db, $_POST['listitemstate_activateid']);
		$listitem_inactivate_name = mysqli_real_escape_string($db, $_POST['listitem_inactivate_name']);

		if( $listitem_inactivate_name == "stock" ){
			$table = "stock";
		}else if($listitem_inactivate_name == "measurements"){
			$table = "quantity";

		}
		$sql = "UPDATE $table SET status='$listitemstate_activateid' WHERE id='$listitem_activateid'";
		$update = mysqli_query($db, $sql);
		echo true;		
		exit();
	}
	// Activate stock ends

	// Update Opening Balance starts
	if( isset($_POST['updateBalance']) ){
		$updateBalance = mysqli_real_escape_string($db, $_POST['updateBalance']);
		$sql = "UPDATE openingbalance SET balance='$updateBalance' WHERE id='1'";
		$update = mysqli_query($db, $sql);
		echo true;		
		exit();
	}
	if( isset($_POST['getBalance']) ){
		$sql = "SELECT balance FROM openingbalance WHERE id='1'";
		$update = mysqli_query($db, $sql);
		$res = mysqli_fetch_array($update);
		echo $res['balance'];		
		exit();
	}
	// Activate stock ends
	
	// update old stock 2 starts
	if( isset($_POST['updateexistedstock_id']) ){
		$updatestock_category = mysqli_real_escape_string($db, $_POST['updatestock_category']);
		$updatestock_stock = mysqli_real_escape_string($db, $_POST['updatestock_stock']);
		$updatestock_qty = mysqli_real_escape_string($db, $_POST['updatestock_qty']);
		$updatestock_price = mysqli_real_escape_string($db, $_POST['updatestock_price']);
		$updateexistedstock_id = mysqli_real_escape_string($db, $_POST['updateexistedstock_id']);
		$updatestock_gsttype = mysqli_real_escape_string($db, $_POST['updatestock_gsttype']);
		$updatestock_gst = mysqli_real_escape_string($db, $_POST['updatestock_gst']);
		$updatestock_gsstprice = mysqli_real_escape_string($db, $_POST['updatestock_gsstprice']);
		$updatestock_barcode = mysqli_real_escape_string($db, $_POST['updatestock_barcode']);
		
		
		
		$sql = "UPDATE stock SET barcode='$updatestock_barcode', gsttype='$updatestock_gsttype', gst='$updatestock_gst', gstprice='$updatestock_gsstprice', category='$updatestock_category', name='$updatestock_stock', qty='$updatestock_qty', mrpprice='$updatestock_price', actualprice='$updatestock_price' WHERE id='$updateexistedstock_id'";
		mysqli_query($db, $sql); 
		echo true;
	
		exit();
	}
	// update old stock 2 ends
?>



<?php
	
	if( isset($_POST['invoicebillid']) ){
		$invoicebillid = mysqli_real_escape_string($db, $_POST['invoicebillid']);
		$sql = "SELECT * FROM purchases WHERE id='$invoicebillid'";
		$existance_check = mysqli_query($db, $sql);
		$data = "";
		$sno  = 1;
		while( $res = mysqli_fetch_array($existance_check) ){
			$category = show_category_name($res['category'], $db);
			$name = $res['name'];
			$qty = $res['qty'];
			$mrp = $res['mrpprice'];
			$actualprice = $res['actualprice'];
			$id = $res['id'];
			$individualnetprice = $res['individualnetprice'];
			
			
			
		
			$data = $data."<table class='table table-condensed table-striped'>
					<tr><td>Category</td><td>$category</td></tr>
					<tr><td>Name</td><td>$name</td></tr>
					<tr><td>Qty</td><td>$qty</td></tr>			
					<tr><td>Individual Net</td><td>$individualnetprice</td></tr>
					<tr><td>Total Net</td><td>$actualprice</td></tr>
					<tr><td>Bill</td><td>$mrp</td></tr>
				</tr></table>";
			//$sno++;
		}							
		echo $data;
		exit();							
									
	}

?>
