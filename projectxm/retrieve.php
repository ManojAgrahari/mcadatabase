<?php
$conn = new mysqli('localhost', 'root', '', 'mcadatabase');
    if (mysqli_connect_errno()) {
      exit('Connect failed: '. mysqli_connect_error());
    }
	
	// SELECT sql query
	$sql = "SELECT * FROM `onlineexam`";
	
	// perform the query and store the result
	$result = $conn->query($sql);
	
	//create an array
	$json_response = array();

	// if the $result contains at least one row
	if ($result->num_rows > 0 ) {
		// output data of each row from $result
		while($row = $result->fetch_assoc()) {
			$rows = $row;
			if($row['ImageYesNo']==1){
					$i =0;
					$id = $row['id'];
					// SELECT sql query
					$img = "SELECT `url` FROM `imagesource` WHERE `superId`='$id'";		
			
					// perform the query and store the result
					$image =  $conn->query($img);
					if ($image->num_rows > 0 ) {
						// output data of each row from $result
						while($row2 = $image->fetch_assoc()) {
						echo $row2['url'].'<br />'.strval($i);
							$rows[strval($i++)]= $row2['url'];									
						}					
						
					}
					
				);					
					
			}		
			array_push($json_response,$rows);		
		}	
			
			echo json_encode($json_response);		
	}
	else {
		echo '0 results';
	}

$conn->close();
?>
