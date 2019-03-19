<?php 
include('../server.php');

if (!isAdmin()) {
	$_SESSION['msg'] = "You must log in first";
	header('location: ../login.php');
}

if (isset($_GET['logout'])) {
	session_destroy();
	unset($_SESSION['user']);
	header("location: ../index.html");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>


    <title>TruHawk</title>
    <meta charset="utf-8" class="nojs">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <!--  stylesheet -->
    <link rel="stylesheet" type="text/css" href="../cssreset.css">
    <link rel="stylesheet" href="../css/style1.css">
    <link rel="shortcut icon" href="img/THLogo.ico" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="ResponsiveSlides.js-master/responsiveslides.min.js"></script>
</head>

<body>
    <!--  header -->
    <header>
        <!--  main  -->
        <a id="logo" href="index.php">
            <img src="../img/THLogo.png" alt="THLogo">
			<span>TruHawk</span>
			
			
        </a>

        <input type="text" class="searchTerm" placeholder="Search for hashtag...">

        <!--  navigation  -->
        <nav>
            <ul>
				<li><a href="index.php">Home</a></li>
				<li><a href="#">Admin</a></li>
                <li><a href="about.php">About</a></li>
				<li><a href="gallery.php">Photo Gallery</a></li>
				 <li><a href="logout.php">Logout</a></li>


            </ul>
		</nav>
</header>

		
		
		<main> 

		

		<div class="wrapper-admin">
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



	<div class="header">
<center>	<h2 style="color:#069">Admin Control Panel</h2>	</div> </center>
	<!-- logged in user information -->
				
			<?php  if (isset($_SESSION['user'])) : ?>
	<Center>	<h2>	Welcome	<strong>  <?php echo $_SESSION['user']['username']; ?></strong>  </h2> </center>

			<center>	<i  style="color: black;"> (<?php echo ucfirst($_SESSION['user']['user_type']); ?>)</i> </center>
				<Center>	<a href="../index.html?logout='1'" class="btn" style="color: color:#069">Logout</a> <a href="create_user.php" class="btn" style="color: color:#069">Create User</a> <a href="view_user.php" class="btn" style="color: color:#069">View Users</a> </center>

			<?php endif ?>


			</main>
			
		            
		<footer class="site-footer">
		<img src="../img/THLogo.png" alt="THLogo">
		<span>&copy; 2019 TruHawk </span>

	</main>
	
	

</body>

</html>
