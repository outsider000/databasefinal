<html>

	<head>

		<title>
			Welcome to INFSCI 2710
		</title>
	</head>
	<body>
		<a href=addevent.php>Add New</a>
		<?php
			// Create connection
			$servername = "localhost";
			$username = "root";
			$password = "mysql";
			$database = "iservice";
			$conn = new mysqli($servername, $username, $password, $database);

			// Check connection
			if ($conn->connect_error) {
			    die("Connection failed: " . $conn->connect_error);
			} 
			echo "<p><font color=\"red\">Connected successfully</font></p>";
			
			// Run a sql
			$sql = "select * from eventinfo;";
			$result = $conn->query($sql);
			if ($result)
			{
				echo "<table border=1px>";
				echo "<tr>";
					echo "<td>";
					echo "Who is in this event";
					echo "</td>";
					echo "<td>";
					echo "";
					echo "</td>";
					echo "<td>";
					echo "";
					echo "</td>";
					echo "<td>";
					echo "id";
					echo "</td>";
					echo "<td>";
					echo "name";
					echo "</td>";
					echo "<td>";
					echo "time";
					echo "</td>";
					echo "<td>";
					echo "place";
					echo "</td>";
					echo "<td>";
					echo "coche1";
					echo "</td>";
					echo "<td>";
					echo "coche2";
					echo "</td>";
					echo "<td>";
					echo "detail";
					echo "</td>";
					echo "<td>";
					echo "up_limit";
					echo "</td>";
					echo "<td>";
					echo "current attend number";
					echo "</td>";
					echo "<td>";
					echo "is_open";
					echo "</td>";
				echo "</tr>";
				while($row = $result->fetch_assoc())
				{
					echo "<tr>";
					$sql2 = "SELECT user.user_name FROM user_event JOIN (user) ON (user_event.user_id = user.user_id) where event_id = '".$row['event_id']."'";
					echo "<td>";
					$query = $conn->query("SELECT user.user_name FROM user_event JOIN (user) ON (user_event.user_id = user.user_id) where event_id = '".$row['event_id']."'");
					$array = Array();
					while($result2 = $query->fetch_assoc()){
						$array[] = $result2['user_name'];
					}
					echo print_r($array);
					echo "</td>";
					echo "<td>";
					echo "<a href='updateevent.php?id=".$row['event_id']."'>update</a>";
					echo "</td>";
					echo "<td>";
					echo "<a href='deleteevent.php?id=".$row['event_id']."'>delete</a>";
					echo "</td>";
					foreach($row as $key=>$value)
					{
						echo "<td>$value</td>";
					}
					echo "</tr>";
				}
				echo "</table>";
			}
			$result->free();
						// Close connection
			mysqli_close($conn);
		?>
	</body>
</html>
