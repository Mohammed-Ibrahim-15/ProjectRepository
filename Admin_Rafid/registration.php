<?php


        require_once 'controller/addDoctor.php';


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <title>Registration</title>
</head>
<header>

<script>

function registration()
    {

        var name= document.getElementById("t1").value;
        var email= document.getElementById("t2").value;
        var uname= document.getElementById("t3").value;
        var pwd= document.getElementById("t4").value;           
        var cpwd= document.getElementById("t5").value;
        
        //email id expression code
        var pwd_expression = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-])/;
        var letters = /^[A-Za-z]+$/;
        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

        if(name=='')
        {
            alert('Please enter your name');
            return false;
        }
        else if(!letters.test(name))
        {
            alert('Name field required only alphabet characters');
        }
        else if(email=='')
        {
            alert('Please enter your user email id');
            return false;
            
        }
        else if (!filter.test(email))
        {
            alert('Invalid email');
        }
        else if(uname=='')
        {
            alert('Please enter the user name.');
        }
        else if(!letters.test(uname))
        {
            alert('User name field required only alphabet characters');
        }
        else if(pwd=='')
        {
            alert('Please enter Password');
        }
        else if(cpwd=='')
        {
            alert('Enter Confirm Password');
        }
        else if(!pwd_expression.test(pwd))
        {
            alert ('Upper case, Lower case, Special character and Numeric letter are required in Password filed');
        }
        else if(pwd != cpwd)
        {
            alert ('Password not Matched');
        }
        else if(document.getElementById("t5").value.length < 6)
        {
            alert ('Password minimum length is 6');
        }
        else if(document.getElementById("t5").value.length > 12)
        {
            alert ('Password max length is 12');
        }
        
        
        else
        {                                           
               alert('Thank You for Registration');
               
               
        }
    }
    function clearFunc()
    {
        document.getElementById("t1").value="";
        document.getElementById("t2").value="";
        document.getElementById("t3").value="";
        document.getElementById("t4").value="";
        document.getElementById("t5").value="";
    }


</script>
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <img src="assets/logo.png" width="120" height="120">
            </div>
            <div class="col-sm nav justify-content-end align-self-center">
                <a class="nav-link" href="Welcome.php">Home</a>
                <a class="nav-link" href="login.php">Login</a>
                <a class="nav-link" href="registration.php">Registration</a>
            </div>
        </div>
    </div>
</header>

<body>
    <div class="container">
        <legend>REGISTRATION</legend>
        <form method="POST" action="registration.php">
            <div class="row g-3">
                <div class="col-md-6">
                    <label class="form-label">Name</label>
                    <input type="text" name="name" id="t1" class="form-control">
                </div>
                <div class="col-md-6">
                    <label class="form-label">Email</label>
                    <input type="email" name="email"id="t2" class="form-control">
                </div>
            </div>
            <div class="row g-3">
                <div class="col-md-6">
                    <label class="form-label">User Name</label>
                    <input type="text" name="username" id="t3" class="form-control">
                </div>
                <div class="col-md-6">
                    <label class="form-label">Password</label>
                    <input type="password" name="password" id="t4"class="form-control">
                </div>
            </div>
            <div class="row g-3">
                <div class="col-md-6">
                    <label class="form-label">Confirm Password</label>
                    <input type="password" name="confirmpassword" id="t5" class="form-control">
                </div>
            </div>
            

            <div class="row justify-content-md-center">
                <div class="col-lg-2">
                    <legend class="col-form-label col-sm-2 pt-0">Gender</legend>
                </div>
                <div class="col-lg-2">
                   

                    <select name="gender" id="gender">
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Others">Others</option>
  
  
  
                   </select>
                   
                    
                </div>
            </div>
            <div class="row justify-content-md-center">
                <div class="col-md-auto">
                    <fieldset>
                        <legend>Date of Birth</legend>
                        <input type="date" name="dateofbirth">
                    </fieldset>
                </div>
            </div>
            <div class="row justify-content-md-center">
                <div class="col-md-auto">
                    
                </div>
            </div>
            <br>
            <div class="row justify-content-md-center">
                <div class="col-md-auto">
                    <input type="submit" name="submit" value="submit" class="btn btn-primary" onclick="registration()">
                    <input type="reset" value="reset" onclick="clearFunc()" id="res" class="btn btn-primary">
                </div>
            </div>
        </form>
    </div>
</body>

</html>