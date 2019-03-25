<?php 
include('../server.php');
require_once "../db.php";
function getId($username){
    $db = mysqli_connect('$DATABASEIP', 'worker', '$USERPASS', 'website');
    $get_id_query = "SELECT `id` FROM `users` WHERE `username` ='".$_SESSION['user']['username']."'";
    $result = mysqli_query($db, $get_id_query);
    while($row = mysqli_fetch_assoc($result)){
        return $row['id'];
    }
}
$useridtest= getId($username);
$sql = "SELECT photo_id FROM pictures ORDER BY photo_id DESC LIMIT 10"; 
$result = mysqli_query($conn, $sql);
if (!isUser()) {
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
				<li><a href="user.php">User</a></li>
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
<center>	<h2 style="color:#000000">Latest Uploaded Photos</h2>	</center> </div>
	<!-- logged in user information -->
				
			<?php  if (isset($_SESSION['user'])) : ?>
		<h2> <center>	Welcome	<strong>  <?php echo $_SESSION['user']['username']; ?></strong> </center> </h2>

		<center>		<i  style="color: black;"> (<?php echo ucfirst($_SESSION['user']['user_type']); ?>)</i>  </center>
					<br> 
                 <center>  &nbsp; <a href="upload.php">Upload Photos</a> </center>
				 <center> &nbsp; <a href="listimages.php">View my Photos</a>  </center>
				   <center>    &nbsp; <a href="recentphotos.php">Recent Photo Uploads</a>  </center>
				   <center>   <a href="../index.html?logout='1'" style="color: red;">Logout</a>  </center>

                   <?php
	while($row = mysqli_fetch_array($result)) {
	?>
		<img src="imageView.php?image_id=<?php echo $row["photo_id"]; ?>" /><br/>
	
<?php		
	}
    mysqli_close($conn);
?>

			<?php endif ?>


			</main>
			
		            
		<footer class="site-footer">
		<img src="../img/THLogo.png" alt="THLogo">
		<span>&copy; 2019 TruHawk </span>

	</main>
	
	

</body>

</html>
