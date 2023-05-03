<!DOCTYPE html>
<HTML lang="en">
<HEAD>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <TITLE>Online Store: Cart</TITLE>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconect" href="https://fonts.gstatic.com"crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cinzel&family=Ltaodisplay=swap" rel="stylesheet">
    <link href="css/style2.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style1.css">
</HEAD>
<BODY>
<?php
session_start();
require_once("connection.php");
$c_id=$_SESSION['cust_id'];
$sql="select count(c_id) from cart where o_id is null and c_id='$c_id'";
$res=mysqli_query($con, $sql);
$cart_items=mysqli_fetch_assoc($res);
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
                    <span class="cart-item-count"><?php echo $cart_items['count(c_id)'];?>
                    </span>
                </div>
                <div>
                    <a href="logout.php" class="link">Logout</a>
                </div>
            </div>

</nav>
<br><br>
<div id="shopping-cart">
<h1 class="section-title">Shopping Cart</h1>
<?php
$query="select p.prod_id, p.prod_name, p.prod_desc, p.prod_img, c.quantity, p.price from product p, cart c where p.prod_id=c.p_id and c.o_id is null and c.c_id='$c_id'";
$result=mysqli_query($con, $query);
if($cart_items['count(c_id)'] != 0){
    $total_quantity = 0;
    $total_price = 0;
?>
<table class="tbl-cart" cellpadding="10" cellspacing="1">
<tbody>
<tr>
<th style="text-align:left;">Name</th>
<th style="text-align:center;" width="10%">Quantity</th>
<th style="text-align:center;" width="15%">Price</th>
<th style="text-align:center;" width="15%">Remove</th>
</tr>
<?php
foreach($result as $cart_item)
{
    $item_price = $cart_item["quantity"]*$cart_item["price"];
?>
<?php
?>
	<tr>
	<td><img src="product images/<?php echo $cart_item["prod_img"]; ?>" class="cart-item-image" /><?php echo $cart_item["prod_name"]; ?></td>
	<td style="text-align:center;">
        <div class="item-counter">
            <button type="submit" class="counter-btn decrement" name="decbtn"><a href="carthandler.php?action=decrement&pid=<?php echo $cart_item["prod_id"]; ?>">-</a></button>
            <p class="item-count"><?php echo $cart_item["quantity"]?></p>
            <button type="submit" class="counter-btn increment" name="incbtn"><a href="carthandler.php?action=increment&pid=<?php echo $cart_item["prod_id"]; ?>">+</a></button>
        </div>
    </td>
	<td  style="text-align:center;"><?php echo "Rs ".$cart_item["price"]; ?></td>
	<td style="text-align:center;"><button type="submit" class="btnRemoveAction" name="rembtn"><a href="carthandler.php?action=delete&pid=<?php echo $cart_item["prod_id"]; ?>"><img src="images/icon-delete.png" alt="Remove Item" /></a></button></td>
	</tr>
	<?php
	$total_quantity += $cart_item["quantity"];
	$total_price += ($cart_item["price"]*$cart_item["quantity"]);
}
?>
<tr>
<td style="text-align:right;">Total:</td>
<td style="text-align:center;"><?php echo $total_quantity; ?></td>
<td style="text-align:center;"><strong><?php echo "Rs. ".number_format($total_price, 2); ?></strong></td>
<td></td>
</tr>
</tbody>
</table>		
<?php
} else {
?>
<div class="no-records">Your Cart is Empty</div>
<?php 
}
?>
</div>
</BODY>
</HTML>