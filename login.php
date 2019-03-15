<?php include('server.php') ?>
<!DOCTYPE html>
<html lang="en" class="nojs">
<head>
    <title>TruHawk Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!--  stylesheet -->
    <link rel="stylesheet" type="text/css" href="cssreset.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="img/THLogo.ico" />
</head>
  <body>
      <!--  header -->
    <header>

        <!--  main  -->
        <a id="logo" href="index.html">
          <img src="img/THLogo.png" alt="THLogo">
          <span>TruHawk</span>
        </a>

        <!--  navigation  -->
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="login.php">Login</a></li>
                <li><a href="register.php">Register</a></li>
                <li><a href="about.php">About</a></li>
                <li><a href="gallery.php">Photo Gallery</a></li>
            </ul>
        </nav>

</header>

  <main>
  <div class="login">

  <div class="section-header">
<h2>Login to TruHawk</h2>
	</div>
	<form method="post" action="login.php">

		<?php echo display_error(); ?>

		<div class="input-group">
			<label>Username</label>
			<input type="text" name="username" >
		</div>
		<div class="input-group">
			<label>Password</label>
			<input type="password" name="password">
		</div>
		<div class="input-group">
			<button type="submit" class="btn" name="login_btn">Login</button>
		</div>
		<p>
			Not yet a member? <a href="register.php">Sign up</a>
		</p>
	</form>
</div>

<div class="Help">
  <p>Forgot your password? <a href="#">Click here to reset it</a>.</p>
</div>
</main>

<!-- the footer -->
<footer>
    <img src="img/THLogo.png" alt="THLogo">
    <span>&copy; 2019 TruHawk </span>
</footer>


</body>
</html>
