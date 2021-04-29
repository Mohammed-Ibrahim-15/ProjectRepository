<?php
session_start();
if ($_SESSION['user'] == '') {
    header("Location: login.php");
}


?>


<!DOCTYPE html>
<html lang="en">

<head>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
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
                        <legend>See Your Doctor </legend>
                    </div>
                  
                        <div class="row">
                            <hr>
                        </div>
                        
						</br>
						</br>
                        <div class="row">
						
						 <div class="col-sm-5">
      <input type="text" class="form-control" id="search"  placeholder="Type Doctor Name Here.." >
      <table class="table table-hover">
      <thead>
        <tr>
          <th>Name</th>
          <th>RoomNo.</th>
          <th>Speciality</th>
          <th>StartingTime</th>
          <th>EndingTime</th>
		  
		   <th>Fees</th>
		  
        </tr>
      </thead>
      <tbody id="output">
        
      </tbody>
    </table>
    </div>
                       
                      </div>
					  
					  
				
                    </div>
						
                       
                       
        </div>
			 
			 
			 
			 
			 
			 
			
  

<script type="text/javascript">
  $(document).ready(function(){
    $("#search").keypress(function(){
      $.ajax({
        type:'POST',
        url:'doctorList.php',
        data:{
          name:$("#search").val(),
        },
        success:function(data){
          $("#output").html(data);
        }
      });
    });
  });
</script>
</body>

</html>