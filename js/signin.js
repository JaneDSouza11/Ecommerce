
function validate() 
{
var fname = document.getElementByName("fname");
        if (fname.value == "" || (isNaN(fname.value)==false))
        {
            alert("Enter your first name");
	    document.getElementByName("fname").focus() ;
            return false;
        }
var lname = document.getElementByName("lname");
        if (lname.value == "" || (isNaN(lname.value)==false))
        {
            alert("Enter your last name");
	    document.getElementByName("lname").focus() ;
            return false;
        }
var uname = document.getElementByName("uname");
        if (uname.value == "")
        {
            alert("Enter a valid username");
	    document.getElementByName("uname").focus() ;
            return false;
        }
var pass = document.getElementByName("password");
        if (pass.value == "") {
            alert("Enter your password");
	    document.getElementByName("password").focus() ;
            return false;
        }
if(pass.value.length < 8 )
{
alert( "Password should have atleast 8 characters" );
document.getElementByName("password").focus() ;
return false;
}
var mob_no = document.getElementByName("mob_no");
        if (mob_no.value == "") {
            alert("Enter your mobile no.");
	    document.getElementByName("mob_no").focus() ;
            return false;
        }
if(isNaN(mob_no.value) || mob_no.value.length != 10 )
{
alert( "Enter 10-digit Mobile Number" );
document.getElementByName("mob_no").focus() ;
return false;
}
var email = document.getElementByName("email");
        if (email.value == "") {
            alert("Enter your email ");
	    document.getElementByName("email").focus() ;
            return false;
        }
atpos = email.value.indexOf("@");
dotpos = email.value.lastIndexOf(".");
 if (atpos < 1 || ( dotpos - atpos < 2 )) 
 {
 alert("Please enter correct email ID");
 document.getElementByName("email").focus() ;
 return false;
}
var address = document.getElementByName("address");
        if (address.value == "") {
            alert("Enter your address");
	    document.getElementByName("address").focus() ;
            return false;
        }
}