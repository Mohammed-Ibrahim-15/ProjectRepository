<?php

// Create connection
$conn = mysqli_connect("localhost", "root", "", "hospital");
$sql = "SELECT * FROM doctor_list WHERE name LIKE '%".$_POST['name']."%'";
$result = mysqli_query($conn, $sql);
if(mysqli_num_rows($result)>0){
	while ($row=mysqli_fetch_assoc($result)) {
		echo "	<tr>
		          <td>".$row['name']."</td>
				  <td>".$row['room_no']."</td>
		          <td>".$row['speciality']."</td>
		          <td>".$row['starting_time']."</td>
		          <td>".$row['ending_time']."</td>
		          <td>".$row['fees']."</td>
		          
		          
		        </tr>";
	}
}
else{
	echo "<tr><td>0 result's found</td></tr>";
}

?>