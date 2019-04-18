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
		   <form>
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
        <div class="header">
		<center> <h2 style="color:#069">Admin Control Panel - Delete User</h2>	</div> </center> 
		<div class="input-group">
        <?php
         if(isset($_POST['delete'])) {
            $db = mysqli_connect('$DATABASEIP', 'worker', '$USERPASS', 'website');

            if(!$db ) {
               die('Could not connect: ' . mysqli_error());
            }
				
            $username = $_POST['username'];
                
			$query = "DELETE FROM users WHERE username = '$username'"; 
            mysqli_query($db, $query);
            
            echo "<script>alert('The user has been successfully deleted!'); window.location = './delete_user.php';</script>";


            
            mysqli_close($db);
         }else {
            ?>
               <form method = "post" action = "<?php $_PHP_SELF ?>">                     
                     <tr>
                     <td> <center>

                      <td width = "180">Enter username you wish to delete:</td>
					  <br>
					  <br>
                        <td><input name = "username" type = "text" 
                           username = "username"></td>
                           </center>
					<br>

                     </tr>
                     
                     
                     
               
					 <div class="input-group">
		<center><input type="button" class="btn" value="Go Back" onclick="history.back(-1)" /> <button type="submit" class="btn" value="Delete" name="delete"> Delete User</button><center>
		</div>
                     
               </form>
            <?php
         }
      ?>

                  
		<footer class="site-footer">
		<img src="../img/THLogo.png" alt="THLogo">
		<span>&copy; 2019 TruHawk </span>
      
   </body>
</html>
