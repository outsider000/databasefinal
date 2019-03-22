<html>

	<head>

		<title>
			Welcome
		</title>
	</head>
	<body>
		<a href=selectevent.php>Back to home</a><br>
		Add new event:
		<form name="Input" action="addevent.php" method="POST">
			Name:<input type="text" name="Name"><br>
			Time:
				<input type="datetime-local" id="Time"
				name="meeting-time" value="2018-06-12T19:30"
				><br>
			Location:<input type="text" name="Location"><br>
			Coche:<input type="text" name="Coche"><br>
			assistant_coche:<input type="text" name="assistant_coche"><br>
			detail:<input type="text" name="detail"><br>
			up_limit:<input type="text" name="up_limit"><br>
			is_open:<select type="text" name="is_open">
							  <option value=0>close</option>
							  <option value=1>open</option>
						</select><br>
			<input type="submit" value="submit">
		</form>
		<?php
			$Name = $_POST["Name"];
			$Name = addslashes($Name);
			$Time = $_POST["Time"];
			$Location = $_POST["Location"];
			$Coche = $_POST["Coche"];
			$assistant_coche = $_POST["assistant_coche"];
			$detail = $_POST["detail"];
			$up_limit = $_POST["up_limit"];
			$is_open = $_POST["is_open"];
			
			if ($Name == "" || $Location == ""|| $Coche == "")
			{
				die("Please provide input in fields.");
			}
			// Generate sql
			$sql = "INSERT INTO eventinfo (name, time, location, coche,assistant_coche,detail,up_limit,is_open)
			VALUES ('".$Name."', '".$Time."','".$Location."','".$coche."', '".$assistant_coche."', '".$detail."', '".$up_limit."', '".$is_open."')";
			echo "<p><font color=\"red\">".$sql."</font></p>";
			
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
         


			if ($conn->query($sql) === TRUE) {
				echo "New record created successfully";
			} else {
				echo "Error: " . $sql . "<br>" . $conn->error;
			}


					 
			
			// Close connection
			mysqli_close($conn);
		?>
	</body>
</html>