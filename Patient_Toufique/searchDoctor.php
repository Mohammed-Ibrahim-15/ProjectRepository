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
                    <a class="list-group-item list-group-item-action" href="dashbord.php">Dashbord</a>
                    <a class="list-group-item list-group-item-action" href="accountViewProfile.php">View profile</a>
                    <a class="list-group-item list-group-item-action" href="editProfile.php">Edit profile</a>
                  
                    <a class="list-group-item list-group-item-action" href="changePassword.php">Change password</a>
					<a class="list-group-item list-group-item-action" href="bookAppointment.php" >Book Appoinment</a>
					<a class="list-group-item list-group-item-action" href="searchDoctor.php" >Search Doctor </a>
					<a class="list-group-item list-group-item-action" href="seePrescribtion.php" >See Your Prescription</a>
					<a class="list-group-item list-group-item-action" href="giveFeedbacks.php" >Give Your Feedbacks</a>
                </div>
            </div>
             
			 
			 
			 
			 <div class="col-9">
                <div class="container">
                    <div class="row">
                        <legend>Search Your Doctor </legend>
                    </div>
                  
                        <div class="row">
                            <hr>
                        </div>
                        
						</br>
						</br>
                        <div class="row">
						
						 <div class="col-sm-5">
      <input type="text" class="form-control" id="search"  placeholder="Search Here.." >
      <table class="table table-hover">
      <thead>
        <tr>
          <th>Name</th>
          <th>Speciality</th>
          <th>StartingTime</th>
          <th>EndingTime</th>
		  <th>RoomNumber</th>
		   <th>Fees</th>
		  <th>Email</th>
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
        url:'searchD.php',
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