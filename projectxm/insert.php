<?php
$erors = array();                      // set an empty array that will contains the errors
//$regexp_mail = '/^([a-zA-Z0-9]+[a-zA-Z0-9._%-]*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,4})$/';         // an e-mail address pattern

// Check for form submission
if (isset($_POST['c0']) && isset($_POST['c1']) && isset($_POST['c2']) && isset($_POST['c3']) && isset($_POST['c4'])) {
  // remove tags and whitespace from the beginning and end of form data
  //$_POST = array_map("strip_tags", $_POST);
  //$_POST = array_map("trim", $_POST);

  // check if all form fields are filled in correctly
  // (email address and the minimum number of characters in "name" and "pass")
  
  if (strlen($_POST['c0'])<3) $erors[] = 'Question must contain minimum 3 characters';
  if (strlen($_POST['c1'])<1) $erors[] = 'Option1 must contain minimum 1 characters';
  if (strlen($_POST['c2'])<1) $erors[] = 'Option2 must contain minimum 1 characters';
  if (strlen($_POST['c3'])<1) $erors[] = 'Option3 must contain minimum 1 characters';
  if (strlen($_POST['c4'])<1) $erors[] = 'Option4 must contain minimum 1 characters';

  // if no errors ($error array empty)
  if(count($erors)<1) {
    // connect to the "tests" database
    $conn = new mysqli('localhost', 'root', '', 'mcadatabase');

    // check connection
    if (mysqli_connect_errno()) {
      exit('Connect failed: '. mysqli_connect_error());
    }

    // store the values in an Array, escaping special characters for use in the SQL statement
    $adds['c0'] = $conn->real_escape_string($_POST['c0']);
    $adds['c1'] = $conn->real_escape_string($_POST['c1']);
	$adds['c2'] = $conn->real_escape_string($_POST['c2']);
	$adds['c3'] = $conn->real_escape_string($_POST['c3']);
	$adds['c4'] = $conn->real_escape_string($_POST['c4']);

    // sql query for INSERT INTO users
    $sql = "INSERT INTO `trick` (`question`, `option1`, `option2`, `option3`, `option4Right`) VALUES ('". $adds['c0']. "', '". $adds['c1']. "', '". $adds['c2']. "', '". $adds['c3']. "', '". $adds['c4']. "')"; 

    // Performs the $sql query on the server to insert the values
    if ($conn->query($sql) === TRUE) {
      echo 'users entry saved successfully';
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