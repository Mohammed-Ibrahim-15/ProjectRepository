<?php

session_start();
if ($_SESSION['user'] == '') {
    header("Location: login.php");
}

require_once 'controller/changePassword.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>
<style>
table, td, th {
  border: 1px solid black;
}

table {
  width: 110%;
  border-collapse: collapse;
}
</style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <title>Dashbord</title>
</head>
<header>
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <img src="assets/logo.png" width="120" height="120">
            </div>
            <div class="col-sm nav justify-content-end align-self-center">
                <a class="nav-link" href="dashbord.php?flag=dashbord">Welcome <?php echo $_SESSION["user"] ?></a>
                <a class="nav-link" href="login.php?flag='logout">Log out</a>
            </div>
        </div>
    </div>
</header>

<body>
    <div class="container">
        <div class="row">
            <div class="col-3">
                <legend>Account</legend>
                <hr>
                <div class="list-group" id="list-tab">
                    <a class="list-group-item list-group-item-action" href="dashbord.php">Dashbord</a>
                    <a class="list-group-item list-group-item-action" href="accountViewProfile.php">View profile</a>
                    <a class="list-group-item list-group-item-action" href="editProfile.php">Edit profile</a>

                    
                       <a class="list-group-item list-group-item-action" href="AppointmentList.php" >Appoinment List</a>
                       <a class="list-group-item list-group-item-action" href="CreateAppointment.php" >Create Appointment</a>
                  
                       <a class="list-group-item list-group-item-action" href="AdmitPatient.php" >Admit Patient</a>
                    <a class="list-group-item list-group-item-action" href="PaymentHistory.php" >Payment History</a>

                   
                    <a class="list-group-item list-group-item-action" href="dashbord.php?flag=changepassword">Change password</a>
                </div>
            </div>
            <div class="col-9">
                <div class="container">
                    <div class="row">
                        <legend>Appointment List</legend>
                    </div>

                    <table>
                        <tr> 
                        <th>Serial no</th>                   
                        <th>Name</th>
                        <th>Mobile Number</th>
                        <th>Doctor</th>
                        <th>Time</th>
                        <th>Date</th>
                    </tr>
                    <?php
                    $conn = mysqli_connect("localhost", "root", "","hospital");
                    if ($conn-> connect_error) {

                        die("Connecton failed:". $conn-> connect_error);
                    }
                    $sql= "SELECT a_id,full_name, mobile_no, doctor_spec, app_time, date FROM createappointment ";
                    $result= $conn-> query($sql);

                    if ($result-> num_rows > 0) {

                        while ($row = $result-> fetch_assoc()){
                            echo "<tr><td>".$row["a_id"]."</td><td>".$row["full_name"]."</td><td>".$row["mobile_no"]."</td><td>".$row["doctor_spec"]."</td><td>".$row["app_time"]."</td><td>".$row["date"]."</td><td>";
                        }
                        echo"</table>";
                    }
                    else {
                        echo "0 result";
                    }

                    $conn-> close();




                    ?>

                    </table>

                </div>
            </div>
        </div>
    </div>
</body>

</html>