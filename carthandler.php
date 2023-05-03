<?php
session_start();
require_once("connection.php");
$cust_id=$_SESSION['cust_id'];

if(isset($_GET['action'], $_GET['pid']) && $_GET['action']=='decrement')
{
    $prod_id=$_GET['pid'];
    $decquery="UPDATE cart SET quantity=quantity-1 WHERE c_id='$cust_id' and p_id='$prod_id'";
    $dec=mysqli_query($con, $decquery);
    header('location: mycart.php');
}

if(isset($_GET['action'], $_GET['pid']) && $_GET['action']=='increment')
{
    $prod_id=$_GET['pid'];
    $incquery="UPDATE cart SET quantity=quantity+1 WHERE c_id='$cust_id' and p_id='$prod_id'";
    $inc=mysqli_query($con, $incquery);
    header('location: mycart.php');
}

if(isset($_GET['action'], $_GET['pid']) && $_GET['action']=='delete')
{
    $prod_id=$_GET['pid'];
    $remquery="DELETE FROM cart WHERE c_id='$cust_id' and p_id='$prod_id'";
    $rem=mysqli_query($con, $remquery);
    header('location: mycart.php');
}

?>