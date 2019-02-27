<?php 
  session_start(); 

  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>TruHawk</title>
    <meta charset="utf-8" class="nojs">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!--  stylesheet -->
    <link rel="stylesheet" type="text/css" href="css/cssreset.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="img/THLogo.ico" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="ResponsiveSlides.js-master/responsiveslides.min.js"></script>
</head>

<body>
    <!--  header -->
    <header>
        <!--  main  -->
        <a id="logo" href="index.php">
            <img src="img/THLogo.png" alt="THLogo">
            <span><font size="5">TruHawk</font></span>
        </a>

        <!--  navigation  -->
        <nav>
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="login.php">Login</a></li>
                <li><a href="register.php">Register</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="gallery.php">Photo Gallery</a></li>
            </ul>
        </nav>

    </header>

    <!-- the content -->
    <main>
    <!-- notification message -->
    <?php if (isset($_SESSION['success'])) : ?>
      <div class="error success" >
      	<h3>
          <?php 
          	echo $_SESSION['success']; 
          	unset($_SESSION['success']);
          ?>
      	</h3>
      </div>
  	<?php endif ?>

    <!-- logged in user information -->
    <?php  if (isset($_SESSION['username'])) : ?>
    	<p>Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
    	<p> <a href="index.php?logout='1'" style="color: red;">logout</a> </p>
    <?php endif ?>
        <!-- iit content -->
        <div class="iit">
            <!-- content for the iit -->
            <ul class="rslides">
                <li><img src="ResponsiveSlides.js-master/demo/images/1.jpg" alt=""></li>
                <li><img src="ResponsiveSlides.js-master/demo/images/2.jpg" alt=""></li>
                <li><img src="ResponsiveSlides.js-master/demo/images/3.jpg" alt=""></li>
            </ul>
              <script>
                $(function() {
                  $(".rslides").responsiveSlides();
                });
              </script>
            <div class="iit-content">
                <h1 class="iit-title">Welcome!</h1>
                <p>Explore the diversity within the community!</p>
                <a href="about.html">Learn More</a>
                <a href="register.html">Register</a>
            </div>
        </div>
        
        <!-- features section -->
        <div class="site-section">
        <div class="site-section-inside">

            <div class="section-header">
                <h2>Key Features</h2>
            </div>

            <div class="feature-box">
                <img src="img/like.png" alt="Easy to Use">
                <h5>Easy to Use</h5>
                <p>Simply upload and tag your photos with a click of a button!</p>
            </div>

            <div class="feature-box">
                <img src="img/faces.png" alt="Fun to Use">
                <h5>Fun to Use</h5>
                <p>Discover those around you with similiar interests!</p>
            </div>

            <div class="feature-box">
                <img src="img/heart.png" alt="Love It">
                <h5>You'll Love It</h5>
                <p>You won't go a day without using our site!</p>
            </div>

        </div>
        </div>
            

    </main>

    <!-- the footer -->
    <footer>
        <img src="img/THLogo.png" alt="THLogo">
        <span>&copy; 2019 TruHawk </span>
    </footer>

</body>
</html>
