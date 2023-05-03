<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login Page</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <section>
        <div class="imgBx">
            <img src="images/shop.jpg">
        </div>
        <div class="contentBx">
                <div class="formBx">
                <h2>Login</h2>
                <form action="mylogin.php" method="post">
                    <div class="inputBx">
                        <span>Username</span>
                        <input type="text" name="uname">
                    </div>
                    <div class="inputBx">
                        <span>Password</span>
                        <input type="password" name="password">
                    </div>
                    <div class="remember">
                        <label><input type="checkbox" name=""> Remember me</label>
                    </div>
                    <div class="inputBx">
                        <input type="submit" value="Sign in" name="login">
                    </div>
                    <div class="inputBx">
                        <p>Don't have an account? <a href="signin.php">Sign up</a></p>
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