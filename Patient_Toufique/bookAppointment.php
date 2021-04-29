<?php
session_start();
if ($_SESSION['user'] == '') {
    header("Location: login.php");
}

        require_once 'controller/BookAppointment.php';
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
                    <a class="list-group-item list-group-item-action" href="dashbord.php">Dashbord</a>
                    <a class="list-group-item list-group-item-action" href="accountViewProfile.php">View profile</a>
                    <a class="list-group-item list-group-item-action" href="editProfile.php">Edit profile</a>
                    
                    <a class="list-group-item list-group-item-action" href="changePassword.php">Change password</a>
					<a class="list-group-item list-group-item-action" href="bookAppointment.php" >Book Appoinment</a>
					<a class="list-group-item list-group-item-action" href="searchDoctor.php" >Search Doctor </a>
					<a class="list-group-item list-group-item-action" href="SeePrescribtion.php" >See Your Prescription</a>
					<a class="list-group-item list-group-item-action" href="giveFeedbacks.php" >Give Your Feedbacks</a>
                </div>
            </div>
             <div class="col-9">
                <div class="container">
                    <div class="row">
                        <legend>Book Appointment </legend>
                    </div>
                   <form method="POST" action="bookAppointment.php">
                        <div class="row">
                            <hr>
                        </div>
                        <div class="row">
                            <label for="doctorspec">Doctor Specifications:</label></br>

<select name="doctorspec" id="doctorspec" onchange="myFunction()">
 <option value="none">Select Your Doctor</option>
  <option value="Dr.Tahmid Hasan">Tahmid Hasan(Neurologist)</option>
  <option value="Dr.Bijay Kumar">Bijoy Kumar(Neurologist)</option>
  <option value="Dr.Shahadat Hossain">Shahadat Hossain(Neurologist)</option>
  <option value="Dr.Abdur Sattar">Abdur Sattar(Neurologist)</option>
  <option value="Dr.Sazzad Hossain">Sazzad Hossain(Psychiatris)</option>
  <option value="Dr.Khayeruzzam Rakib">Khayeruzzaman Rakib(Psychiatris)</option>
  
  
  <option value="Dr.Fahima Rahman">Fahima Rahman(Dermatologist)</option>
 
  <option value="Dr.Rizvi Chowdhury">Rizvi Chowdhury(Cardiologist)</option>
  <option value="Dr.Debnando Ghosh">Debnando Ghosh(Ortheopedist)</option>
 
  <option value="Dr.Asif Zaman">Asif Zaman(Dentist)</option>
</select>
</br>


​​​<p id="demo"></p>


<script>
function myFunction() {
  var x = document.getElementById("doctorspec").value;
  document.getElementById("demo").innerHTML = "You selected: " + x;
  
}
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
                          <label for="appt">Choose An Appointment Time:</label>
                          <input type="time" id="appt" name="appt" onchange="myFunction1()">
						  
						  <p id="demo1"></p>
                        </div>
						</br>
						</br>
                        <div class="row">
                               <label for="date"> Date:</label>

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