<?php 
    include('../server.php');

    if (!isUser()) {
	$_SESSION['msg'] = "You must log in first";
	header('location: ../login.php');
}

if (isset($_GET['logout'])) {
	session_destroy();
	unset($_SESSION['user']);
	header("location: ../login.php");
}
    
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>TruHawk</title>
    <meta charset="utf-8" class="nojs">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!--  stylesheet -->
    <link rel="stylesheet" type="text/css" href="../css/cssreset.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="shortcut icon" href="../img/THLogo.ico" />
    <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="ResponsiveSlides.js-master/responsiveslides.min.js"></script>
    <script src="js/search.js" type="text/javascript"></script>
</head>

<body>
    <!--  header -->
    <header>
        <!--  main  -->
        <a id="logo" href="#">
            <img src="../img/THLogo.png" alt="THLogo">
            <span>TruHawk</span>
        </a>

			        

        <!--  navigation  -->
        <nav>
            <ul>
	        <li>
	   	 <form id="search" action="" value="<?php echo $search; ?>" method="POST">
		 <div class="search-box" id="search-box"> 
		 <input type="text" id="searchbar" name="searchtext" class="search-txt" placeholder="Search for hashtag..."/> 
		 <button type="submit" class="search_btn" name="search_btn"> 
	  	 <i class="fas fa-search"></i> 
		 </button>
		 </div>
		 <form>
		</li> 
                <li><a href="#">Home</a></li>
                <li><a href="user.php">User</a></li>
                <li><a href="about.php">About</a></li>
                <li><a href="gallery.php">Photo Gallery</a></li>
                <li><a href="logout.php">Logout</a></li>

            </ul>
        </nav>
    <div class="wrap">

    
</div>
</div>

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

				<?php  if (isset($_SESSION['user'])) : ?>



				<?php endif ?>

</header>
<!-- iit content -->
<div class="iit">
            <!-- content for the iit -->
            <ul class="rslides">
                <li><img src="../ResponsiveSlides.js-master/demo/images/1.jpg" alt=""></li>
                <li><img src="../ResponsiveSlides.js-master/demo/images/2.jpg" alt=""></li>
                <li><img src="../ResponsiveSlides.js-master/demo/images/3.jpg" alt=""></li>
            </ul>
              <script>
                $(function() {
                  $(".rslides").responsiveSlides();
                });
              </script>
            <div class="iit-content">
                <h1 class="iit-title">Welcome!</h1>
                <p>Explore the diversity within the community!</p>
                <a href="upload.php">Upload Photos</a>
                <a href="listImages.php">View Photos</a>
            </div>
        </div>
        
        <!-- features section -->
        <div class="site-section">
        <div class="site-section-inside">

            <div class="section-header">
                <h2>Key Features</h2>
            </div>

            <div class="feature-box">
                <img src="../img/like.png" alt="Easy to Use">
                <h5>Easy to Use</h5>
                <p>Simply upload and tag your photos with a click of a button!</p>
            </div>

            <div class="feature-box">
                <img src="../img/faces.png" alt="Fun to Use">
                <h5>Fun to Use</h5>
                <p>Discover those around you with similiar interests!</p>
            </div>

            <div class="feature-box">
                <img src="../img/heart.png" alt="Love It">
                <h5>You'll Love It</h5>
                <p>You won't go a day without using our site!</p>
            </div>

            <br>
            </br> 
            <br>
           

        </div>
		</div>
        <footer>
        <img src="../img/THLogo.png" alt="THLogo">
        <span>&copy; 2019 TruHawk </span>
    </footer>
        
            

    </main>


</body>
</html>
