<?php
require_once 'model.php';
$message = "";

if(isset($_POST["submit"]))
{
    $data['feedbacks'] = $_POST['feedbacks'];
    

    if(giveFeedbacks($data))
    {
        $message = "Product Successfully added!!";
    }
}

?>