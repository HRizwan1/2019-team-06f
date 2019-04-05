<?php
   require_once "../db.php";
   if(isset($_GET['image_id'])) {
       $sql = "SELECT photo_type,photo FROM pictures WHERE photo_id=" . $_GET['image_id'];
        $result = mysqli_query($conn, $sql) or die("<b>Error:</b> Problem on Retrieving Image BLOB<br/>" . mysqli_error($conn));
        $row = mysqli_fetch_array($result);
        header("Content-type: " . $row["photo_type"]);
       echo $row["photo"];

    }
    mysqli_close($conn);
?>
<!DOCTYPE html>
<html lang="en" class="nojs">
<head>
   <title>TruHawk Login</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
   <!--  stylesheet -->
   <link rel="stylesheet" type="text/css" href="cssreset.css">
   <link rel="stylesheet" href="css/style.css">
   <link rel="shortcut icon" href="img/THLogo.ico" />
</head>
 <main>
 <body>
 <img src="imageView.php?image_id=<?php echo $row["4"]; ?>" />
 </main>

   <!-- the footer -->
<footer>
   <img src="img/THLogo.png" alt="THLogo">
   <span>&copy; 2019 TruHawk </span>
</footer>
 </body>
 </html>