<?php
// connect to the MySQL server
$conn = new mysqli('localhost', 'root', '', 'tests');

// check connection
if (mysqli_connect_errno()) {
  exit('Connect failed: '. mysqli_connect_error());
}

// sql query for CREATE TABLE
$sql = "CREATE TABLE `tryfile` (
 `id` INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 `Question` VARCHAR(2500) NOT NULL,
 `optiona` VARCHAR(100) NOT NULL,
  `optionb` VARCHAR(100) NOT NULL,
   `optionc` VARCHAR(100) NOT NULL,
    `optiond` VARCHAR(100) NOT NULL,
	 `solution` VARCHAR(500) NOT NULL
 ) ;

// Performs the $sql query on the server to create the table
if ($conn->query($sql) === TRUE) {
  echo 'Table "tryfile" successfully created';
}
else {
 echo 'Error: '. $conn->error;
}

$conn->close();
?>