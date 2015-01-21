<?php
$conn = new mysqli('localhost', 'root', 'atijib', 'mcadatabase');
$i=0;
//$result_data = new array();
    // check connection
    if (mysqli_connect_errno()) {
      exit('Connect failed: '. mysqli_connect_error());
    }
	
	// SELECT sql query
	$sql = "SELECT * FROM `onlineexam`" ;

	// perform the query and store the result
	$result = $conn->query($sql);

	//create an array
	$json_response = array();

	// if the $result contains at least one row
	if ($result->num_rows > 0 ) {
		// output data of each row from $result
		while($row = $result->fetch_assoc()) {
			
		//	echo '<br /> id: '. $row['id']. ' - question: '. $row['Question']. ' -	option1: '. $row['Option1']. ' -	option2: '. $row['Option2']. ' -	option3: '. $row['Option3'];
			 $result_data[$i] = array( 
			'id'=>$row['id'], 	
            'Question' => $row['Question'], 
            'Option1' => $row['Option1'], 
            'Option2' => $row['Option2'], 
            'Option3' => $row['Option3'], 
	    'Option4Right' => $row['Option4Right']
            ); 
			array_push($json_response, $row);

			//echo json_encode($result_data);
		}
		echo json_encode($json_response);
		
	}
	else {
		echo '0 results';
	}

$conn->close();
?>
