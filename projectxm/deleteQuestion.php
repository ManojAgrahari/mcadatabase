	<?php
// connect to the "mcadatabase" database
$conn = new mysqli('localhost', 'root', '', 'mcadatabase');

// check connection
if (mysqli_connect_errno()) {
  exit('Connect failed: '. mysqli_connect_error());
}

// DELETE sql query
$sql = "DELETE FROM `chemistry` WHERE `id`=106";

// perform the query and check for errors
if (!$conn->query($sql)) {
  echo 'Error: '. $conn->error;
}

$conn->close();
?>