
//Check password strength
let pass = document.getElementById("userpassword");
//Add event listener


function PasswordCheck(str){
    //password must have atleast 1 number, 1 //lowercase and 1 uppercase letter and //atleast 6 characters.
        let re =/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}$/;
        return re.test(str);
}
    

pass.addEventListener("keyup",PasswordCheck);

//run code when user submits form
let form = document.getElementById("regform");


form.addEventListener("submit", function(){
    if(!PasswordCheck(form.password.value)){
        event.preventDefault();
        console.log("hello");
        let pw_err = document.getElementById("password_error");
        console.log("hello");
        pw_err.innerText = "Please enter a valid password.";
        
        alert("Password must have atleast 1 number, 1 lowercase and 1 uppercase character. The password must be 6 characters.");

        console.log("hello");
    }

    if(form.password.value != form.confirm_password.value){
        event.preventDefault();
        let con_pw_err = document.getElementById("confirm_error");
        con_pw_err.innerText = "Passwords do  not match.";
    }
    
});

