<?php
require_once 'model.php';
$message = "";

if(isset($_POST["submit"]))
{
    $data['name'] = $_POST['name'];
    $data['mn'] = $_POST['mn'];
    $data['doctorspec'] = $_POST['doctorspec'];
    $data['appt'] = $_POST['appt'];
    $data['date'] = $_POST['date'];

    if(CreateAppointment($data))
    {
        $message = "Product Successfully added!!";
    }
}

?>