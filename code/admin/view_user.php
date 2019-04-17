
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
	<center> <h2 style="color:#069">Admin Control Panel - Viewing All Users</h2>	</div> </center> 
	<!-- logged in user information -->
	<div class="input-group">
		<center>	<input type="button" class="btn" value="Go Back" onclick="history.back(-1)" /> </center>
<br>

<div class="table-container">
<table border="1" align="center">
<tr>
  <td>ID</td>
  <td>Username</td>
  <td>User Type</td>
  <td>Email</td>

</tr>

<?php

$query = mysqli_query($db, "SELECT * FROM users")
   or die (mysqli_error($db));

while ($row = mysqli_fetch_array($query)) {
  echo
   "<tr>
    <td>{$row['id']}</td>
    <td>{$row['username']}</td>
	<td>{$row['user_type']}</td>
	<td>{$row['email']}</td>
   </tr>\n";

}

?>

			</main>
			
		            
		<footer class="site-footer">
		<img src="../img/THLogo.png" alt="THLogo">
		<span>&copy; 2019 TruHawk </span>	
	


</html>
