<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login Page</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="js/signin.js"></script>
</head>
<body>
    <section>
        <div class="imgBx">
            <img src="images/shop.jpg">
        </div>
        <div class="contentBx">
                <div class="formBx">
                <h2>Sign in</h2>
                <form action="signininsert.php" method="post">
                    <div class="inputBx">
                        <span>First name</span>
                        <input type="text" name="fname" required>
                    </div>
                    <div class="inputBx">
                        <span>Last name</span>
                        <input type="text" name="lname" required>
                    </div>
                    <div class="inputBx">
                        <span>Username</span>
                        <input type="text" name="uname" required>
                    </div>
                    <div class="inputBx">
                        <span>Password</span>
                        <input type="password" name="password" required>
                    </div>
                    <div class="inputBx">
                        <span>Mobile number</span>
                        <input type="text" name="mob_no" required>
                    </div>
                    <div class="inputBx">
                        <span>Email</span>
                        <input type="text" name="email" required>
                    </div>
                    <div class="inputBx">
                        <span>Address</span>
                        <input type="text" name="address" required>
                    </div>

                    <div class="remember">
                        <label><input type="checkbox" name=""> Remember me</label>
                    </div>
                    <div class="inputBx">
                        <input type="submit" value="Register" onclick="return validate()" name="register">
                    </div>
                    <div class="inputBx">
                        <p>Already have an account? <a href="login.php">Login</a></p>
                    </div>
                    <?php if(isset($_GET['error']))
                            {
                                $err=$_GET['error'];
                                echo "<script>alert('$err')</script>";
                            }
                    ?>
                </form>
                </div>
        </div>
    </section>
</body>
</html>