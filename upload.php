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
           <input type="text" class="searchTerm" placeholder="Search..">
               <li><a href="index.php">Home</a></li>
               <li><a href="login.php">Login</a></li>
               <li><a href="register.php">Register</a></li>
               <li><a href="about.php">About</a></li>
               <li><a href="gallery.php">Photo Gallery</a></li>
           </ul>
       </nav>
   <div class="wrap">
</div>

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


           <div class="Upload">
           <form name="frmImage" enctype="multipart/form-data" action=""
       method="post" class="frmImageUpload">
       <label>Upload Image File:</label><br /> <input name="userImage"
           type="file" class="inputFile" /> <input type="submit"
           value="Submit" class="btnSubmit" />
   </form>
           </div>
           <?php

if (count($_FILES) > 0) {
   if (is_uploaded_file($_FILES['userImage']['tmp_name'])) {
       require "db.php";
       $imgData = addslashes(file_get_contents($_FILES['userImage']['tmp_name']));
       $imageProperties = getimageSize($_FILES['userImage']['tmp_name']);

       $sql = "INSERT INTO photos(imageType ,imageData)
    VALUES('{$imageProperties['mime']}', '{$imgData}')";
       $current_id = mysqli_query($conn, $sql) or die("<b>Error:</b> Problem on Image Insert<br/>" . mysqli_error($conn));
       if (isset($current_id)) {
           header("Location: listImages.php");
       }
   }
}

?>
       </div>



   </main>

   <!-- the footer -->
   <footer>
       <img src="img/THLogo.png" alt="THLogo">
       <span>&copy; 2019 TruHawk </span>
   </footer>

</body>
</html>