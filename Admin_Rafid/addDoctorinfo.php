<?php
session_start();
if ($_SESSION['user'] == '') {
    header("Location: login.php");
}

        require_once 'controller/adddoctor_info.php';
		$message = '';
    

?>


<!DOCTYPE html>
<html lang="en">

<head>
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
                   <a class="list-group-item list-group-item-action" href="dashbord.php" >Dashbord</a>
                    <a class="list-group-item list-group-item-action" href="accountViewProfile.php" >View profile</a>
                    <a class="list-group-item list-group-item-action" href="editProfile.php" >Edit profile</a>
                    <a class="list-group-item list-group-item-action" href="changePassword.php" >Change password</a>
					 <a class="list-group-item list-group-item-action" href="addDoctorinfo.php" >Add New Doctor</a>
					   <a class="list-group-item list-group-item-action" href="seePatientlist.php" >Patient List</a>
					    <a class="list-group-item list-group-item-action" href="seeDoctorlist.php" >Doctor List</a>
						 <a class="list-group-item list-group-item-action" href="seeAppointmentlist.php" >Appoinment List</a>
                </div>
            </div>
             <div class="col-9">
                <div class="container">
                    <div class="row">
                        <legend>Add Doctor </legend>
                    </div>
                   <form method="POST" action="addDoctorinfo.php">
                        <div class="row">
                            <hr>
                        </div>
                        <div class="row">
                          
						  <label for="doctorname">Doctor name:</label>
                        <input type="text" id="doctorname" name="doctorname">
						</br>
						
						<label for="doctorm">Doctor Contact No:</label>
                        <input type="text" id="doctorm" name="doctorm">
						
</br>





<script>

function myFunction1() {
  var y= document.getElementById("appt").value;
  document.getElementById("demo1").innerHTML = "You selected: " + y;
  
}

function myFunction2() {
  var z= document.getElementById("date").value;
  document.getElementById("demo2").innerHTML = "You selected: " + z;
  
}



</script>

                        </div>
						</br>
						</br>
                        <div class="row">
                          <label for="appt">Joining Time:</label>
                          <input type="time" id="appt" name="appt" onchange="myFunction1()">
						  
						  <p id="demo1"></p>
                        </div>
						</br>
						</br>
                        <div class="row">
                               <label for="date">Joining  Date:</label>

                               <input type="date" id="date" name="date" onchange="myFunction2()">
								<p id="demo2"></p>
	   
                        </div>
						
                        <br>
						</br>
						
                        <div class="row">
                            <button type="submit" name="submit" value="submit" class="btn btn-primary">Submit</button>
                        </div>
                        <br>
						</br>
                       
        </div>
	        	</form>
    </div>
</body>

</html>