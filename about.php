<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
.navbar{
    width: 100%;
    height: 80px;
    position: fixed;
    top: 0;
    left: 0;
    display: flex;
    justify-content: center;
    z-index: 9;
    transition: 0.5s;
}

.navbar.bg{
    background: #fff;
}

.links-container{
    display: flex;
    align-items: center;
    list-style: none;
}

.link-item{
    margin: 10px;
}

.link{
    font-size: 20px;
    font-weight: 100;
    color: rgb(15, 13, 13);
    text-decoration: none;
    padding: 10px;
    opacity: 0.7;
    transition: .5s;
}

.navbar.bg .link{
    color: #000;
    opacity: 0.5;
}

.link.active, .link:hover, .navbar.bg .link:hover, .navbar.bg .link:active{
    opacity: 2;
}

.user-interactions{
    display: flex;
    position: absolute;
    right: 5vw;
    top: 50%;
   transform: translateY(-50%);
}

.cart, .user{
    width: 30px;
    height: 30px;
    position: relative;
    margin: 10px;
    cursor: pointer;
}

.cart-icon, .user-icon{
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.cart-item-count{
    font-family: 'lato',sans-serif;
    color: black;
    padding: 5px;
    font-size: 15px;
    border-radius: 50%;
    background: #fff;
    position: absolute;
    bottom: -12px;
    left: -12px;
}


body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #d5be8b;
  color: black;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 50%;
    display: block;
  }
}
.xmlcode{
  font-family: 'cinzel';
  text-align: center;
  font-size: 30px;
  font-weight: bold;
}
</style>
</head>
<body>
<?php
session_start();
require_once("connection.php");
$c_id=$_SESSION['cust_id'];
$sql="select count(c_id) from cart where o_id is null and c_id='$c_id'";
$result=mysqli_query($con, $sql);
$cart_items=mysqli_fetch_assoc($result);
?>
    <nav class="navbar bg">
        <ul class="links-container">
            <li class="link-item"><a href="home.php" class="link active">HOME</a></li>
            <li class="link-item"><a href="mens.php" class="link">MEN</a></li>
            <li class="link-item"><a href="women.php" class="link">WOMEN</a></li>
            <li class="link-item"><a href="kids.php" class="link">KIDS</a></li>
            <li class="link-item"><a href="about.php" class="link">ABOUT US</a></li>
        </ul>
        <div class="user-interactions">
            <div class="cart">
            <a href="mycart.php" class="link"><img src="images/cart2.png" class="cart-icon" alt=""></a>
                <span class="cart-item-count"><?php echo $cart_items['count(c_id)'];?></span>
            </div>
            <div>
                <a href="logout.php" class="link">Logout</a>
            </div>
        </div>
    </nav>

<div class="about-section">
  <h1>About Us</h1>
 <h3>Luxury fashion brands aim to inspire desire in fashion savvy consumers, who understand that the right clothing can enhance their natural beauty, create a specific sartorial aesthetic and establish carefully curated status.</h3>
</div>

<div class="xmlcode">
<?xml version="1.0" encoding="UTF-8"?>
<subtitle>
    <name >Our Team</name>
</subtitle>

</div>

<!-- <h2 style="text-align:center">Our Team</h2> -->
<div class="row">

  <div class="column">
    <div class="card">
      <img src="images/jane.JPG" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Jane D'Souza</h2>
        <p class="title"> Web Developer</p>
        
        <p>janedsouza4201@gmail.com</p>
        <p>9283874787</p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="images/gladys.jpg" alt="Gladys" style="width:100%">
      <div class="container">
        <h2>Gladys Fernandes</h2>
        <p class="title"> Web Developer</p>
        <p>gladys21@gmail.com</p>
        <p>9280934787</p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="images/jehan.jpg" alt="Jehan" style="width:100%">
      <div class="container">
        <h2>Jehan Shaikh</h2>
        <p class="title"> Web Developer</p>
        <p>jehan234@gmail.com</p>
        <p>9283734787</p>
      </div>
    </div>
  </div>
</div>


</div>
</div>

</body>
</html>
