
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
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="ResponsiveSlides.js-master/responsiveslides.min.js"></script>
</head>

<body>
    <!--  header -->
    <header>
        <!--  main  -->
        <a id="logo" href="index.php">
            <img src="../img/THLogo.png" alt="THLogo">
			<span><font size="5">TruHawk</font></span>
			
			
        </a>

        

        <!--  navigation  -->
        <nav>
            <ul>
				
            <input type="text" class="searchTerm" placeholder="Search..">
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