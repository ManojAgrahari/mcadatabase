<!DOCTYPE html>
<html>
<head>
<title>MathJax TeX Test Page</title>
<script type="text/x-mathjax-config">
  MathJax.Hub.Config({tex2jax: {inlineMath: [['$','$'], ['\\(','\\)']]}});
</script>
<script type="text/javascript"
  src="../MathJax/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>
</head>
<body>

<?php
$conn = new mysqli('localhost', 'root', '', 'mcadatabase');
    if (mysqli_connect_errno()) {
      exit('Connect failed: '. mysqli_connect_error());
    }
	
	//Get total question of the table
	$sql1='SELECT * FROM `trick`';	
	// perform the query and store the result
	$result1 = $conn->query($sql1);	
	$last_id= $result1->num_rows;

	//random question id generator
	function UniqueRandomNumbersWithinRange($min, $max, $quantity) {
		$numbers = range($min, $max);
		shuffle($numbers);
		return array_slice($numbers, 0, $quantity);
	}

	$trickArray= UniqueRandomNumbersWithinRange(0,$last_id,5);
	
	$sql2 = 'SELECT DISTINCT * FROM `trick` WHERE id IN (' . implode(',', $trickArray) . ')';

	// perform the query and store the result
	$result = $conn->query($sql2);
	
	//create an array
	$json_response = array();
	static $counter=1;  //To index the questions outputted
	// if the $result contains at least one row
	if ($result->num_rows > 0 ) {
		// output data of each row from $result
		while($row = $result->fetch_assoc()) {
		echo "<br /><br /><br /> ".$counter.") ".$row['Question']."<br /> "."a) ".$row['Option1']."<br  /> "."b) ".$row['Option2']."<br /> "."c) ".$row['Option3']."<br /> "."d) ".$row['Option4Right']."<br /> "."Solution:  ".$row['Trick'];
			
			$id = $row['id'];
			$row['id']=$counter++;
			$rows = $row;
			if($row['ImageYesNo']==1){
					$i =0;
					$id = $row['id'];
					// SELECT sql query
					$img = "SELECT `url` FROM `imagesource` WHERE `tableType`='tricks' AND `superId`='$id'";		
			
					// perform the query and store the result
					$image =  $conn->query($img);
					if ($image->num_rows > 0 ) {
						// output data of each row from $result
						while($row2 = $image->fetch_assoc()) {
						//echo $row2['url'].'<br />'.strval($i);
							$rows[strval($i++)]= $row2['url'];									
						}											
					}							
					
			}		
			array_push($json_response,$rows);		
		}	
			
		//echo json_encode($json_response);		
	}
	else {
		//echo '0 results';
	}

$conn->close();
?>
</body>
</html>