<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mens</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconect" href="https://fonts.gstatic.com"crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cinzel&family=Ltaodisplay=swap" rel="stylesheet">
<link rel="stylesheet" href="css/style1.css">
<link rel="stylesheet" href="css/search.css">
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
                <span class="cart-item-count"><?php echo $cart_items['count(c_id)'];
		?></span>
            </div>
            <div>
                <a href="logout.php" class="link">Logout</a>
            </div>
        </div>
    </nav>
    
    <section class="search-listing">
        <h1 class="section-title">Men Clothing</h1>
           
            <div class="product-container">
		<?php
		$query="select prod_id, prod_name, prod_img, price from product where category='Men' and quantity!=0";
		$result=mysqli_query($con, $query);
		foreach($result as $product){
		?>
                <div class="product-card">
                    <a href="product.php?product=<?= $product['prod_id']; ?>"><img src="product images/<?= $product['prod_img']; ?>" class="product-img" alt="">
                    <p class="product-name"><?= $product['prod_name']; ?></p></a>
                </div>
		<?php } ?>
            </div>
    </section>
</body>
</html>