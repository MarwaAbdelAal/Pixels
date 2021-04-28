<?php

include("connection.php");

$username = "hussien" ;
$pass = sha1("222");

$ins=$db->prepare("INSERT INTO users (username,password) VALUES ('$username','$pass')");

if($ins->execute())
{
    echo "Data inserted successfuly";
} 
else
{
    echo "Something went wrong!";
}

//marwa>>123
//ali>>ali
//hussien>>222


?>


