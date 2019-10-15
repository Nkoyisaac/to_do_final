<?php
 function isUserLoggedin(){

    if(isset($_SESSION["loggedin"])&& $_SESSION["loggedin"] === true){

        header("location: ./index.php");
        exit;
    } 
    
 }


 //validate the password server side $sanpost_password $sanpost_confirm_pass
function validPassword($password,$confirm_password){

    $validate_password = preg_match_all('^\S*(?=\S{6,})(?=\S*[a-z])(?=\S*[A-Z])(?=\S*[\d])\S*$^',$password);

    if(!$validate_password){
        return false;
    } else{
        if($password != $confirm_password){
            return false;
        }
        else{
            return $password = "sdsdsd";
        }
        
    }
}

;

?>