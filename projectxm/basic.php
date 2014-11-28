<?php
	//1. Create a  database connection
	$connection= mysql_connect("localhost","root","");
	if(!$connection){
	die("Database connection failed:".mysql_error());
	}
	//2.Select a databse to use
	$db_select=mysql_select_db("mcadatabase",$connection);
	if(!$connection){
	die("Database connection failed:".mysql_error());
	}	
?>

<html>
	<head>
	
		<title> Basic </title>
		</head>
		<body>
			<?php
			//3.add data
			$sql="INSERT INTO trick (Question,Option_1,Option_2,Option_3,Option_4Right,Solution)
				VALUES ('The value of $ \begin{bmatrix}
						1 & 1& 1 \\
						x & y& z \\
						y+z & z+x & x+y
						\end{bmatrix} $ is', 'Ansa', 'Ansb','Ansc','Ansd','Use')";
			?>
		</body>
		
	</html>
	<?php
	//5. Close connection
	mysql_close($connection);
	?>