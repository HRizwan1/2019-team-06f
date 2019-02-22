<?php include('server.php') ?>
<!DOCTYPE html>
<html lang="en" class="nojs">
<head>
    <title>TruHawk Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no"/>
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
                <li><a href="login.html">Login</a></li>
                <li><a href="register.html">Register</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="gallery.html">Photo Gallery</a></li>
            </ul>
        </nav>

</header>

  <main>
  <div class="login">

  <div class="section-header">
      <h2>Login to TruHawk</h2>
  <form method="post" action="login.php">
    <?php include('errors.php'); ?>
    <p><input type="text" name="username" value="" placeholder="Username"></p>
    <p><input type="password" name="password" value="" placeholder="Password"></p>
    <p class="remember_me">
      <label>
        <input type="checkbox" name="remember_me" id="remember_me">
        Remember me on this computer
      </label>
    </p>
    <p class="submit"><input type="submit" name="login_user" value="Login"></p>
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