<?php
// connect to the MySQL server
$conn = new mysqli('localhost', 'root', '', 'mcadatabase');

// check connection
if (mysqli_connect_errno()) {
  exit('Connect failed: '. mysqli_connect_error());
}

// sql query for CREATE TABLE
$sql = "CREATE TABLE `ImageSource` (
 `id` INT(5) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 `url` TEXT(10000) NOT NULL, 
 `superId` INT(5) UNSIGNED 
 ) CHARACTER SET utf8 COLLATE utf8_general_ci"; 

// Performs the $sql query on the server to create the table
if ($conn->query($sql) === TRUE) {
  echo 'Table "OnlineExam" successfully created';
}
else {
 echo 'Error: '. $conn->error;
}

$conn->close();
?>