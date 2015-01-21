<?php
// connect to the "tests" database
$conn = new mysqli('localhost', 'root', '', 'mcadatabase');

// check connection
if (mysqli_connect_errno()) {
  exit('Connect failed: '. mysqli_connect_error());
}

// sql query for INSERT INTO trick (two rows)
$sql = "INSERT INTO `trick` (`question`, `option1`, `option2`, `option3`,`option4Right`)
 VALUES ('Question1', 'option1a', 'option1b','option1c','option1d'),
('Question2', 'option2a', 'option2b','option2c','option2d')"; 

// Performs the $sql query on the server to insert the values
if ($conn->query($sql) === TRUE) {
  echo 'users entry saved successfully';
}
else {
 echo 'Error: '. $conn->error;
}

$conn->close();
?>