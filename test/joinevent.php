<html>
	<head>
		<title>
			Welcome
		</title>
	</head>
	<body>
		<?php
			// Create connection
			$servername = "localhost";
			$username = "root";
			$password = "mysql";
			$database = "iservice";
			$conn = new mysqli($servername, $username, $password, $database);
			$id = $_GET['id'];
			// Check connection
			if ($conn->connect_error) {
			    die("Connection failed: " . $conn->connect_error);
			} 
			echo "<p><font color=\"red\">Connected successfully</font></p>";
			session_start();
				$sql = "select * from  user_event where user_id='".$_SESSION["admin"] ."' and event_id='".$id."'";
									echo "<p><font color=\"red\">".$sql."</font></p>";
				if(mysqli_num_rows($conn->query($sql))>=1)
				{
					$conn->close();
					echo"<script charset=UTF-8>alert('you already in this event');window.location.href='chooseevent.php'</script>";
				}
				else
				{
					// sql to a record
					echo "<p><font color=\"red\">Id is ".$id."</font></p>";
					$sql = "INSERT INTO user_event (user_id, event_id)
					VALUES ('".$_SESSION["admin"] ."', '".$id."')";
					echo "<p><font color=\"red\">".$sql."</font></p>";
					if ($conn->query($sql) === TRUE) {
						echo "join event successfully";
					} else {
						echo "Error: " . $conn->error;
					}

					$conn->close();
				}
					echo '<a href="chooseevent.php">Back</a>';
				
		?>
	</body>
</html>