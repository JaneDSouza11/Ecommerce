<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cinzel&family=Lato&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/style1.css">
    
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
    <!-- navbar -->

<nav class="navbar">
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
            <span class="cart-item-count"><?php echo $cart_items['count(c_id)'];
		?></span>
        </div>
        <div>
            <a href="logout.php" class="link">Logout</a>
        </div>
    </div>
</nav>

<header class="header-section" >
    <h1 class="header-heading"><span>premium</span> quality</h1>
</header>

<!-- best selling products -->

<section class="best-selling-product-section">
    <h1 class="section-title">Best Selling Products</h1>
    <div class="product-container">
        <div class="product-card">
            <img src="images/card2.png" class="product-img" alt="">
            <p class="product-name">clothing</p>
        </div>
        <div class="product-card">
            <img src="images/card1.png" class="product-img" alt="">
            <p class="product-name">clothing</p>
        </div>
        <div class="product-card">
            <img src="images/card3.png" class="product-img" alt="">
            <p class="product-name">clothing</p>
        </div>
        <div class="product-card">
            <img src="images/card4.png" class="product-img" alt="">
            <p class="product-name">clothing</p>
        </div>
        <div class="product-card">
            <img src="images/card5.png" class="product-img" alt="">
            <p class="product-name">clothing</p>
        </div>
    </div>
</section>

<!-- mid section -->
<section class="mid-section">
    <div class="section-item-container">
        <!-- <img src="images/bg2.jpg" alt=""> -->
        <div class="section-info">
            <h1 class="title">Premium quality in <span> affordable</span> price</h1>
            <p class="info">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam omnis dolor voluptate, suscipit in officia consectetur adipisci obcaecati, vitae repudiandae facere itaque tempora architecto laborum aperiam delectus. Accusantium, in voluptate!</p>
        </div>
    </div>
</section>

<!-- review section -->
<section class="review-section">
    <h1 class="section-title">What our <span>customers</span> say about us</h1>
    <div class="review-container">
        <div class="review-card">
            <div class="user-dp" data-rating="4.9"><img src="images/user 1.png" alt=""></div>
            <h2 class="review-title">Best quality more than my expection</h2>
            <p class="review">Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident amet ut, architecto atque odio expedita id! Obcaecati, facilis eius consequatur, error perferendis alias quod possimus, velit at inventore tempore. Deleniti!</p>
        </div>
        <div class="review-card">
            <div class="user-dp" data-rating="5.0"><img src="images/user 2.png" alt=""></div>
            <h2 class="review-title">On time delivery with best packaging</h2>
            <p class="review">Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident amet ut, architecto atque odio expedita id! Obcaecati, facilis eius consequatur, error perferendis alias quod possimus, velit at inventore tempore. Deleniti!</p>
        </div>
        <div class="review-card">
            <div class="user-dp" data-rating="4.5"><img src="images/user 3.png" alt=""></div>
            <h2 class="review-title">Very helpful customer support</h2>
            <p class="review">Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident amet ut, architecto atque odio expedita id! Obcaecati, facilis eius consequatur, error perferendis alias quod possimus, velit at inventore tempore. Deleniti!</p>
        </div>
        <div class="review-card">
            <div class="user-dp" data-rating="4.8"><img src="images/user 4.png" alt=""></div>
            <h2 class="review-title">Very easy to refund/return products</h2>
            <p class="review">Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident amet ut, architecto atque odio expedita id! Obcaecati, facilis eius consequatur, error perferendis alias quod possimus, velit at inventore tempore. Deleniti!</p>
        </div>

    </div>
</section>

<script src="js/home.js"></script>

</body>
</html>