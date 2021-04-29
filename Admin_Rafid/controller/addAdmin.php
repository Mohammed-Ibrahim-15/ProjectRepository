<?php
require_once 'model.php';


if(isset($_POST["submit"]))
{
    $data['name'] = $_POST['name'];
    $data['email'] = $_POST['email'];
    $data['username'] = $_POST['username'];
    $data['password'] = $_POST['password'];
    $data['gender'] = $_POST['gender'];
    $data['dateofbirth'] = $_POST['dateofbirth'];

    if(addAdmin($data))
    {
        $message = " Successfully Registrerd!!";
    }
}

?>