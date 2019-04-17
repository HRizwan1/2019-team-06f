
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
    <link rel="stylesheet" type="text/css" href="../css/cssreset.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="shortcut icon" href="img/THLogo.ico" />
    <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
	<script src="js/search.js" type="text/javascript"></script>
</head>

<body>
    <!--  header -->
    <header>
        <!--  main  -->
        <a id="logo" href="index.php">
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
		   </form>
		</li> 
				<li><a href="index.php">Home</a></li>
				<li><a href="admin.php">Admin</a></li>
                <li><a href="about.php">About</a></li>
				<li><a href="gallery.php">Photo Gallery</a></li>
				 <li><a href="logout.php">Logout</a></li>


            </ul>
		</nav>

		
		
		<main> 
		</header>

		

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
	<center> <h2 style="color:#069">Admin Control Panel - Create User</h2>	</div> </center> 
	<!-- logged in user information -->
		

	<div id="createuserform">
	<form method="post" name="createuser" id="createuser" action="create_user.php">

		<?php echo display_error(); ?>

		<div class="input-group">
			<label>Username</label>
			<input type="text" name="username" id="username" value="<?php echo $username; ?>">
		</div>
		<div class="input-group">
			<label>Email</label>
			<input type="email" name="email" id="email" value="<?php echo $email; ?>">
		</div>
		<div class="input-group">
			<label>User type</label>
			<select name="user_type" id="user_type" >
				<option value=""></option>
				<option value="admin">Admin</option>
				<option value="user">User</option>
			</select>
		</div>
		<div class="input-group">
			<label>Password</label>
			<input type="password" id="password" name="password_1">
		</div>
		<div class="input-group">
			<label>Confirm password</label>
			<input type="password" id="cpassword" name="password_2">
		</div>
		<br>
		<div class="input-group">
		<input type="button" class="btn" value="Go Back" onclick="history.back(-1)" /> <button type="submit" class="btn" action="create_user.php" name="register_btn"> Create User</button> 
		</div>
	</form>
	</div>



			</main>
			
		            
		<footer class="site-footer">
		<img src="../img/THLogo.png" alt="THLogo">
		<span>&copy; 2019 TruHawk </span>

	</main>
	
	

</body>

</html>
