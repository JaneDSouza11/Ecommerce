<?php
session_start();
require_once("connection.php");
if(isset($_POST['login']))
{
    if(empty($_POST['uname']) || empty($_POST['password']))
    {
        header("location: login.php?error=Enter valid Username and Password!");
    }
    else
    {
        $username=$_POST['uname'];
        $password=$_POST['password'];
        $sql="SELECT * from customer where username='$username' and password='$password'";
        $result=mysqli_query($con, $sql);
        $row=mysqli_fetch_assoc($result);
        $count=mysqli_num_rows($result);
        if($count==1)
        {
            $_SESSION['cust_id']=$row['cust_id'];
            header("location: home.php");
        }
        else
        {
            header("location: login.php?error=Incorrect Username or Password!");
        }
    }
}
?>