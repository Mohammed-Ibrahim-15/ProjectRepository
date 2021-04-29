<?php
require_once 'model.php';
$message = "";

if(isset($_POST["submit"]))
{
    $data['doctorname'] = $_POST['doctorname'];
	$data['doctorm'] = $_POST['doctorm'];
    $data['appt'] = $_POST['appt'];
    $data['date'] = $_POST['date'];

    if(adddoctor_info($data))
    {
        $message = "Doctor Successfully added!!";
    }
}

?>
