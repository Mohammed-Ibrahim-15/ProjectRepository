<?php

// Create connection
$conn = mysqli_connect("localhost", "root", "", "hospital");
$sql = "SELECT * FROM appointment_list WHERE sl_no LIKE '%".$_POST['name']."%'";
$result = mysqli_query($conn, $sql);
if(mysqli_num_rows($result)>0){
	while ($row=mysqli_fetch_assoc($result)) {
		echo "	<tr>
		          <td>".$row['sl_no']."</td>
				  <td>".$row['patient_name']."</td>
		          <td>".$row['patient_contact']."</td>
		          <td>".$row['doctor_name']."</td>
		          <td>".$row['date']."</td>
		           <td>".$row['time']."</td>
		        
		          
		          
		        </tr>";
	}
}
else{
	echo "<tr><td>0 result's found</td></tr>";
}

?>