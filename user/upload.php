<?php 
include('../server.php');

if (!isUser()) {
	$_SESSION['msg'] = "You must log in first";
	header('location: ../login.php');
}

if (isset($_GET['logout'])) {
	session_destroy();
	unset($_SESSION['user']);
	header("location: ../index.html");
}
if(isset($_SESSION['username']))
{
    $usersData = getId(['username']);
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
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="ResponsiveSlides.js-master/responsiveslides.min.js"></script>
    <script src="js/search.js" type="text/javascript"></script>
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
<center>	<h2 style="color:#000000">My User Panel - Upload Photo</h2> </center>	</div>
	<!-- logged in user information -->
				
		    <!-- content for the iit -->


            <div class="Upload">
           <form name="frmImage" enctype="multipart/form-data" action=""
        method="post" class="frmImageUpload">
        <label>Upload Image File:</label><br /> <input name="userImage"
            type="file" class="inputFile" /> 
   	<script type="text/javascript">
        $(document).ready(function(){
        $('input[type="file"]').change(function(e){
        var fileName = e.target.files[0].name;
        var filenameText = fileName.replace(/\.[^/.]+$/, "");
        photoname.value= filenameText;
	});
	});
	</script>
            <div>
               <textarea name="photoname" value="<?php echo $photoname; ?>"placeholder="Enter Image Name (required field)"></textarea>
            </div>
            <div>
               <textarea name="hashtag" value="<?php echo $hashtag; ?>"placeholder="Type hashtag here (required field)"></textarea>
            </div>
            <input type="submit"
            value="Submit" class="btnSubmit" name="upload_btn" />
   </form>
           </div>
           

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
			
		            
		<footer class="site-footer">
		<img src="../img/THLogo.png" alt="THLogo">
		<span>&copy; 2019 TruHawk </span>

	
</main> 


</body>

</html>
