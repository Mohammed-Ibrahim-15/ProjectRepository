<?php

// Create connection
$conn = mysqli_connect("localhost", "root", "", "hospital");
$sql = "SELECT * FROM patient_list WHERE sl_no LIKE '%".$_POST['name']."%'";
$result = mysqli_query($conn, $sql);
if(mysqli_num_rows($result)>0){
	while ($row=mysqli_fetch_assoc($result)) {
		echo "	<tr>
		          <td>".$row['sl_no']."</td>
				  <td>".$row['name']."</td>
		          <td>".$row['gender']."</td>
		          <td>".$row['contact_no']."</td>
		          <td>".$row['blood_group']."</td>
		        
		          
		          
		        </tr>";
	}
}
else{
	echo "<tr><td>0 result's found</td></tr>";
}

?>