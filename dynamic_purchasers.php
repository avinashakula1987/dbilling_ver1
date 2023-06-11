<?php	
	
	$sql2 = "SELECT id, name, mobile, address, gst, state, pincode, city FROM customers WHERE type='purchaser' ORDER BY name";
	$result2 = mysqli_query($db, $sql2);
	while ($row = mysqli_fetch_array($result2)){
		$id = htmlentities(stripslashes($row['id']));
		$name = htmlentities(stripslashes($row['name']));										
		$mobile = htmlentities(stripslashes($row['mobile']));					
		$address = htmlentities(stripslashes($row['address']));					
		$gst = htmlentities(stripslashes($row['gst']));					
		$state = htmlentities(stripslashes($row['state']));					
		$pincode = htmlentities(stripslashes($row['pincode']));					
		$city = htmlentities(stripslashes($row['city']));					
		 $output_array2[] = array( 
				'id' => $id
				, 'label' => $name
				, 'mobile' => $mobile
				, 'address' => $address
				, 'gst' => $gst
				, 'state' => $state
				, 'pincode' => $pincode
				, 'city' => $city
			);
	}
	echo json_encode($output_array2);

?>