<?php

require_once 'model.php';

if($_GET['count'] == 0)
{
     createPrescription($_GET['d_id'], $_GET['p_id']);
}


$pr_id = returnPrescription($_GET['p_id'], $_GET['d_id']);


if(file_exists("../".$pr_id['pr_id'].".json"))
{

}
else
{
     file_put_contents("../".$pr_id['pr_id'].".json", "");
}

if(file_exists("../".$pr_id['pr_id'].".json"))  
{  
     $current_data = file_get_contents("../".$pr_id['pr_id'].".json");  
     $array_data = json_decode($current_data, true);  
     $extra = array(  
          'medicineName'     =>     $_GET['name'],  
          'comment'          =>     $_GET['comment'] 
     );  
     $array_data[] = $extra;  
     $final_data = json_encode($array_data);  
     if(file_put_contents("../".$pr_id['pr_id'].".json", $final_data))  
     {  
          echo "Medicine Added";  
     }  
}  
else  
{  
     echo "Medicine Not Added";  
}  

?>