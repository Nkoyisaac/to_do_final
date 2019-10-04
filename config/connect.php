<?php 
include 'base.php';
// creating the connection to the database
$conn = new mysqli($servername,$username,$password,$database);

if($conn === true){
    echo "connected succesfully";
}else{
    echo $conn->connect_error;
}


?>