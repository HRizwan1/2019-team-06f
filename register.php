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
        <a id="logo" href="index.php">
          <img src="img/THLogo.png" alt="THLogo">
          <span>TruHawk</span>
        </a>

        <!--  navigation  -->
        <nav>
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="login.php">Login</a></li>
                <li><a href="register.php">Register</a></li>
                <li><a href="about.php">About</a></li>
                <li><a href="gallery.php">Photo Gallery</a></li>
            </ul>
        </nav>

</header>
  <main>
    <form method="post" action="register.php" id="">
      <?php include('errors.php'); ?>
        <h2 class="form-signin-heading"></h2>

        <div class="section-header">
            <h2>Registration</h2>

        <label for="username">
        Username:</label>
        <input name="username" type="text" id="username" class="form-control" placeholder="Enter Username" value="<?php echo $username; ?>"
        >
        <br />
        <label for="txtPassword">
        Password:</label>
        <input name="txtPassword" type="password" id="txtPassword" title="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number"
        class="form-control" placeholder="Enter Password" required pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" />
        <br />
        <label for="txtConfirmPassword">
        Confirm Password:</label>
        <input name="txtConfirmPassword" type="password" id="txtConfirmPassword" class="form-control"
        placeholder="Confirm Password" />
        <br />
        
        <label for="email">
        Email:</label>
        <input name="email" id="email" class="form-control" placeholder="Enter Email"
        required type="email" value="<?php echo $email; ?>" />
        <hr />
        <input type="submit" name="btnSignup" value="Register" id="btnSignup" class="btn btn-primary" />
        <div class="alreadym">
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
