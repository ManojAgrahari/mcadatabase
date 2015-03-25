<?php
    // connect to the "mcadatabse"
    $conn = new mysqli('localhost', 'root', '', 'mcadatabase');

    // check connection
    if (mysqli_connect_errno()) {
      exit('Connect failed: '. mysqli_connect_error());
    }
	
	// SELECT sql query
	$subject="e";
	$sql1="Select * FROM `onlineexam` WHERE `Visibility`='$subject'";
		
	// perform the query and store the result
	$result = $conn->query($sql1);
	
	//create an array	
	static $counter=1;
	// if the $result contains at least one row
	if ($result->num_rows > 0 ) {
		// output data of each row from $result
		while($row = $result->fetch_assoc()) {
				// sql query for INSERT INTO users
				$sql = "INSERT INTO `english` (`Question`, `Option1`, `Option2`, `Option3`,
				`Option4Right`, `Solution`,`ImageYesNo`, `setNo`) VALUES
				('". addslashes($row['Question']). "', '". addslashes($row['Option1']). "',
				'". addslashes($row['Option2']). "', '". addslashes($row['Option3']). "',
				'". addslashes($row['Option4Right']). "', '". addslashes($row['Solution']). "',
				'". $row['ImageYesNo']. "', '". $row['setNo']. "')"; 
	
		// Performs the $sql query on the server to insert the values
		if ($conn->query($sql) === TRUE) {
			echo 'English '.$counter++.' entry saved successfully'.'<br />';
		}
		else {
			echo 'Error on '.$counter++.': '. $conn->error.'<br />';
		}	
					}											
				}							
		
    $conn->close();  

?>