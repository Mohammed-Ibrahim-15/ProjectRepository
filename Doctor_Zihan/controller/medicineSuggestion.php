<?php

require_once 'model.php';
$name = $_GET["name"];
$medicines = showMedicine();

//echo $medicines[0]['m_name'];

$hint = "";
if ($name !== "") {
    $name = strtolower($name);
    $len=strlen($name);
    foreach($medicines as $i => $a) {
      if (stristr($name, substr($a["m_name"], 0, $len))) {
        if ($hint === "") {
          $hint = $a['m_name'];
        } else {
          $hint .= ", $a[m_name]";
        }
      }
    }
  }
  
  // Output "no suggestion" if no hint was found or output correct values
  echo $hint === "" ? "no suggestion" : $hint;

?>