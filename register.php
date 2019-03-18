<?php include('server.php') ?>
<!DOCTYPE html>
<html lang="en" class="nojs">
<head>
    <title>Register Form</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script async src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script async src="js/form.js"></script>
    <!--  stylesheet -->
    <link rel="stylesheet" type="text/css" href="cssreset.css">
    <link rel="stylesheet" href="css/style.css" />
    <link rel="shortcut icon" href="img/THLogo.ico" />
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>

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
                <li><a href="#">Register</a></li>
                <li><a href="about.php">About</a></li>
                <li><a href="gallery.php">Photo Gallery</a></li>
            </ul>
        </nav>

</header>
  <main>
  <h2 class="form-signin-heading"></h2>

<div class="section-header">
<h2>Registration</h2>
    <form method="post" action="register.php" id="">
      <?php include('errors.php'); ?>
      <div class="input-group">
		<label>Username</label>
    <input type="text" name="username" value="<?php echo $username; ?>">	</div>
	<div class="input-group">
		<label>Email</label>
    <input type="email" name="email" value="<?php echo $email; ?>">	</div>
	<div class="input-group">
		<label>Password</label>
		<input type="password" name="password_1">
	</div>
	<div class="input-group">
		<label>Confirm password</label>
		<input type="password" name="password_2">
	</div>
	<div class="input-group">
		<button type="submit" class="btn" name="register_btn">Register</button>
	</div>
	<p>
		Already a member? <a href="login.php">Sign in</a>
	</p>
</div>
      </div>
    </form>
</main>

<!-- the footer -->
<footer>
  <img src="img/THLogo.png" alt="THLogo">
  <span>&copy; 2019 TruHawk </span>
</footer>


</body>
</html>
