<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Store-Product page</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cinzel&family=Lato&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/style1.css">
    <link rel="stylesheet" href="css/product.css">
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
        
        <!-- product detail -->
    
	<?php
	if(isset($_GET['product']))
	{
	$prod_id=$_GET['product'];
	$query="select prod_name, seller_name, prod_desc, prod_details,prod_img, price from product where prod_id='$prod_id'";
	$result=mysqli_query($con, $query);
	$product=mysqli_fetch_array($result);
	if($product)
	{ ?>

        <section class="product-section">
            <img src="product images/<?= $product['prod_img']; ?>" class="product-image" alt="<?= $product['prod_name']; ?>">
            <div class="product-detail">
                <h1 class="product-title"><?= $product['prod_name']; ?></h1>
                <p class="product-des"><?= $product['prod_desc']; ?></p>
            <div class="ratings">
                <img src="images\fill star.png" class="star" alt="">
                <img src="images\fill star.png" class="star" alt="">
                <img src="images\fill star.png" class="star" alt="">
                <img src="images\fill star.png" class="star" alt="">
                <img src="images\no fill star.png" class="star" alt="">
                <span class="rating-count">4,023 reviews</span>
            </div>
                <p class="price">Rs.<?= $product['price']; ?>/-</p>
                <form action="" method="post">
                    <div class="btn-container">
                        <?php
                        $_SESSION['prod_id']=$prod_id;
                        ?>
                        <button class="product-btn buy-btn" name="addbtn">Add to cart</button>
                    </div>
                </form>

            </div>
        </section>
        <section class="detail-des">
            <h1 class="section-title">Details</h1>
            <p class="des">Seller Name: <?= $product['seller_name']; ?></p>
	    <p class="des"><?= $product['prod_details']; ?></p>
        </section>
    
	<?php }
	else
	    echo "Product not found";
	}
	else
	    echo "Something went wrong";
	?>
        <!-- review -->
        <section class="review-section">
            <h1 class="section-title">Reviews</h1>
            <div class="review-container">
                <div class="review-card">
                    <div class="user-dp" data-rating="4.9"><img src="images/user 1.png" alt=""></div>
                    <h2 class="review-title">best quality more than my expection</h2>
                    <p class="review">Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident amet ut, architecto atque odio expedita id! Obcaecati, facilis eius consequatur, error perferendis alias quod possimus, velit at inventore tempore. Deleniti!</p>
                </div>
                <div class="review-card">
                    <div class="user-dp" data-rating="5.0"><img src="images/user 2.png" alt=""></div>
                    <h2 class="review-title">on time delivery with best packaging</h2>
                    <p class="review">Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident amet ut, architecto atque odio expedita id! Obcaecati, facilis eius consequatur, error perferendis alias quod possimus, velit at inventore tempore. Deleniti!</p>
                </div>
                <div class="review-card">
                    <div class="user-dp" data-rating="4.5"><img src="images/user 3.png" alt=""></div>
                    <h2 class="review-title">very helpful customer support</h2>
                    <p class="review">Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident amet ut, architecto atque odio expedita id! Obcaecati, facilis eius consequatur, error perferendis alias quod possimus, velit at inventore tempore. Deleniti!</p>
                </div>
                <div class="review-card">
                    <div class="user-dp" data-rating="4.8"><img src="images/user 4.png" alt=""></div>
                    <h2 class="review-title">very easy to refund/return products</h2>
                    <p class="review">Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident amet ut, architecto atque odio expedita id! Obcaecati, facilis eius consequatur, error perferendis alias quod possimus, velit at inventore tempore. Deleniti!</p>
                </div>
        
            </div>
        </section>
    
        <!-- similar products -->
    <section class=" best-selling-product-section">
        <h1 class="section-title">Similar products</h1>
        <div class="product-container">
            <div class="product-card">
                <img src="product images/w6.JPG" class="w1" alt="">
                <p class="Product name">Dark Brown Crop Biker Jacket</p>
            </div>
            <div class="product-card">
                <img src="product images/w2.JPG" class="w2" alt="">
                <p class="Product name">Navy Solid Belted A-Line Dress</p>
            </div>
            <div class="product-card">
                <img src="product images/w3.JPG" class="w3" alt="">
                <p class="Product name">Navy Blue Cotton Shift Dress With Belt</p>
            </div>
            <div class="product-card">
                <img src="product images/w4.JPG" class="w4" alt="">
                <p class="Product name">Peach Front Knot Shirt and Pant Co-o+rd Set</p>
            </div>
            <div class="product-card">
                <img src="product images/w5.JPG" class="w5" alt="">
                <p class="Product name">Black Printed Strappy Pyjama Set</p>
            </div>
        </div>
    </section>
    
    
    <?php
        if(isset($_POST['addbtn']))
        {
            $cu_id=$_SESSION['cust_id'];
            $pro_id=$_SESSION['prod_id'];
            if((!empty($pro_id)) && (!empty($cu_id)))
            {
                $addquery="insert into cart (c_id, p_id) values ('$cu_id', '$pro_id')";
                $add=mysqli_query($con, $addquery);
            }
        }
    ?>
</body>
</html>