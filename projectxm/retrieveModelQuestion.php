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
	//random question id generator
	function UniqueRandomNumbersWithinRange($min, $max, $quantity) {
		$numbers = range($min, $max);
		shuffle($numbers);
		return array_slice($numbers, 0, $quantity);
	}
	static $counter=1;	
	$subjects=array("english","chemistry","physics","math","aptitude");
	$subNums=array(2,2,4,4,2);	$subQuestionCount=0;
	
	//create an array
	$json_response = array();
	
	foreach ($subjects as $sb)
	{
	//Get total question of the table
	$sql="SELECT * FROM $sb";	
	// perform the query and store the result
	$result = $conn->query($sql);	
	$last_id= $result->num_rows;

	$models= UniqueRandomNumbersWithinRange(0,$last_id,$subNums[$subQuestionCount++]);	
	
	$sql2 = "SELECT DISTINCT * FROM $sb WHERE id IN (" . implode(',', $models) . ")";

	// perform the query and store the result
	$result2 = $conn->query($sql2);	
	
	// if the $result contains at least one row
	if ($result2->num_rows > 0 ) {
		// output data of each row from $result
		while($row = $result2->fetch_assoc()) {
		//echo "<br /><br /><br /> ".$counter.") ".$row['Question']."<br /> "."a) ".$row['Option1']."<br  /> "."b) ".$row['Option2']."<br /> "."c) ".$row['Option3']."<br /> "."d) ".$row['Option4Right']."<br /> "."Solution:  ".$row['Solution'];
			$row['id']=$counter++;
			$rows = $row;
			if($row['ImageYesNo']==1){
					$i =0;
					$id = $row['id'];
					// SELECT sql query
					$img = "SELECT `url` FROM `imagesource` WHERE `superId`='$id'";		
			
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
	}		
		
	
	else {
		echo '0 results';
	}
	}
	echo json_encode($json_response);		

$conn->close();
?>
</body>
</html>