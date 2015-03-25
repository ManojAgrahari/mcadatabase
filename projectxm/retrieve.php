<?php
$conn = new mysqli('localhost', 'root', '', 'mcadatabase');

    // check connection
    if (mysqli_connect_errno()) {
      exit('Connect failed: '. mysqli_connect_error());
    }
	
	// SELECT sql query
	$sql = "SELECT * FROM `trick`" ;

	// perform the query and store the result
	$result = $conn->query($sql);

	// if the $result contains at least one row
	if ($result->num_rows > 0) {
		// output data of each row from $result
		while($row = $result->fetch_assoc()) {
			
			//echo '<br /> id: '. 								. ' - question: '. $row['question']. ' -	option1: '. $row['option1']. ' -	option2: '. $row['option2']. ' -	option3: '. $row['option3'];
			echo json_encode($row);
		}
		//echo ($result);
		
	}
	else {
		echo '0 results';
	}

$conn->close();
?>