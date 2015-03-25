<?php
// connect to the "mcadatabase" database
$conn = new mysqli('localhost', 'root', '', 'mcadatabase');

// check connection
if (mysqli_connect_errno()) {
  exit('Connect failed: '. mysqli_connect_error());
}

$file = fopen("tricks.txt", "r") or exit("Unable to open file!");

  $sri= file_get_contents('tricks.txt');  
  $mka= explode("trythis",$sri);  
  $kus=array_chunk($mka,6);
  $counter=1;
  for ($i=0; $i< count($kus)-1 ; $i++)
  {
	$qfeed= array("","","","","","");
	for ($j=0; $j < count($kus[$i]) ; $j++)
	{   
	
		$qfeed[$j]=addslashes(trim(($kus[$i][$j])));
		 //echo $kus[$i][0] ;
		
	}
	// sql query for INSERT INTO users
		$sql = "INSERT INTO `trick` (`Question`, `Option1`, `Option2`, `Option3`, `Option4Right`, `Trick`)
		VALUES ('$qfeed[0]', '$qfeed[1]', '$qfeed[2]', '$qfeed[3]', '$qfeed[4]', '$qfeed[5]')"; 	
		// Performs the $sql query on the server to insert the values
		if ($conn->query($sql) === TRUE) {
		echo 'Questions '.  $counter . ' entry saved successfully'. '<br \>';
		}
		else {
		echo 'Error on: '.  $counter . $conn->error . '<br />';
		}
		$counter+=1;;
  }
 
fclose($file);
$conn->close();

?>