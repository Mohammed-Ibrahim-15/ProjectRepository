
<?php
require_once 'model.php';
$message = "";

if(isset($_POST["submit"]))
{
    $data['name'] = $_POST['name'];
    $data['mn'] = $_POST['mn'];
    $data['email'] = $_POST['email'];
    $data['gender'] = $_POST['gender'];
    $data['bg'] = $_POST['bg'];
    $data['dateofbirth'] = $_POST['dateofbirth'];
 if(admitPatient($data))
{
$message = "Patient Successfully added!!";
}
}

?>