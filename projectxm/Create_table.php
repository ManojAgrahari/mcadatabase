<?php
// connect to the MySQL server
$conn = new mysqli('localhost', 'root', '', 'hotelmanganement');

// check connection
if (mysqli_connect_errno()) {
  exit('Connect failed: '. mysqli_connect_error());
}

// sql query for CREATE TABLE
$sql = "CREATE TABLE `customers` (
 `id` INT(5) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 `roomNumber` TEXT(20000),
 `name` TEXT(100) NOT NULL,
 `phone` INT(10) NOT NULL,
 `homeplace` TEXT(100) NOT NULL,
 `officenumber` INT(17) NOT NULL
 ) CHARACTER SET utf8 COLLATE utf8_general_ci"; 

// Performs the $sql query on the server to create the table
if ($conn->query($sql) === TRUE) {
  echo 'Table "customers" successfully created';
}
else {
 echo 'Error: '. $conn->error;
}

$conn->close();
?>