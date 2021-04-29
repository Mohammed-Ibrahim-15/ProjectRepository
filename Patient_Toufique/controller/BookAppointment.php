<?php
require_once 'model.php';
$message = "";

if(isset($_POST["submit"]))
{
    $data['doctorspec'] = $_POST['doctorspec'];
    $data['appt'] = $_POST['appt'];
    $data['date'] = $_POST['date'];

    if(createAppointment($data))
    {
        $message = "Product Successfully added!!";
    }
}

?>






