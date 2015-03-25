<?php
$erors = array();                      // set an empty array that will contains the errors

// Check for form submission
if (isset($_POST['']) && isset($_POST['c3']) && isset($_POST['c4']) && isset($_POST['c5']) && isset($_POST['c6']) && isset($_POST['c7']) && isset($_POST['c8']) && isset($_POST['c9'])) {
  // remove tags and whitespace from the beginning and end of form data
  //$_POST = array_map("strip_tags", $_POST);
  //$_POST = array_map("trim", $_POST);

  // check if all form fields are filled in correctly
  // the minimum number of characters
  
  if (strlen($_POST['c2'])<3) $erors[] = 'Question must contain minimum 3 characters';
  if (strlen($_POST['c3'])<1) $erors[] = 'Option1 must contain minimum 1 characters';
  if (strlen($_POST['c4'])<1) $erors[] = 'Option2 must contain minimum 1 characters';
  if (strlen($_POST['c5'])<1) $erors[] = 'Option3 must contain minimum 1 characters';
  if (strlen($_POST['c6'])<1) $erors[] = 'Option4 must contain minimum 1 characters';
 // if (strlen($_POST['c7'])<1) $erors[] = 'Solution must contain minimum 1 characters';  

  // if no errors ($error array empty)
  if(count($erors)<1) {
    // connect to the "mcadatabse"
    $conn = new mysqli('localhost', 'root', '', 'mcadatabase');

    // check connection
    if (mysqli_connect_errno()) {
      exit('Connect failed: '. mysqli_connect_error());
    }

    // store the values in an Array, escaping special characters for use in the SQL statement
    $adds['c2'] = $conn->real_escape_string($_POST['c2']);
    $adds['c3'] = $conn->real_escape_string($_POST['c3']);
	$adds['c4'] = $conn->real_escape_string($_POST['c4']);
	$adds['c5'] = $conn->real_escape_string($_POST['c5']);
	$adds['c6'] = $conn->real_escape_string($_POST['c6']);
	$adds['c7'] = $conn->real_escape_string($_POST['c7']);
	$adds['c8'] = $conn->real_escape_string($_POST['c8']);
	$adds['c8'] = $conn->real_escape_string($_POST['c9']);
	
	
	$check=$_POST['c4'];
	echo $check;

    // sql query for INSERT INTO users
    $sql = "INSERT INTO `onlineexam` (`Question`, `Option1`, `Option2`, `Option3`, `Option4Right`, `Solution`, `ImageYesNo`) VALUES ('". $adds['c2']. "', '". $adds['c3']. "', '". $adds['c4']. "', '". $adds['c5']. "', '". $adds['c6']. "', '". $adds['c7']. "', '". $adds['c8']. "')"; 

    // Performs the $sql query on the server to insert the values
    if ($conn->query($sql) === TRUE) {
      echo 'Users entry saved successfully';
    }
    else {
      echo 'Error: '. $conn->error;
    }

    $conn->close();
  }
  else {
    // else, if errors, it adds them in string format and print it
    echo implode('<br />', $erors);
  }
}
else {
  echo 'No data from form';
}
?>