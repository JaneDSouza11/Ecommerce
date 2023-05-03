<?php
session_start();
require_once("connection.php");
if(isset($_POST['register']))
{
    $fname=mysqli_real_escape_string($con, $_REQUEST['fname']);
    $lname=mysqli_real_escape_string($con, $_REQUEST['lname']);
    $uname=mysqli_real_escape_string($con, $_REQUEST['uname']);
    $password=mysqli_real_escape_string($con, $_REQUEST['password']);
    $mob_no=mysqli_real_escape_string($con, $_REQUEST['mob_no']);
    $email=mysqli_real_escape_string($con, $_REQUEST['email']);
    $address=mysqli_real_escape_string($con, $_REQUEST['address']);

    $sql="select * from customer where email='$email'";
    $check=mysqli_query($con, $sql);
    $row=mysqli_fetch_assoc($check);
    $count=mysqli_num_rows($check)>0;
    if($count>0)
    {
        header("location: signin.php?error=Email already registered");
    }
    else
    {
        $query="insert into customer(first_name, last_name, username, password, mobile_no, email, address) values ('$fname', '$lname', '$uname', '$password', '$mob_no', '$email', '$address')";
        $result=mysqli_query($con, $query);
        if($result)
        {
            echo "Successfully Registered";
            header("location: login.php");
        }
        else
        {
            header("location: signin.php?error=Error encountered");
        }
    }
}
?>