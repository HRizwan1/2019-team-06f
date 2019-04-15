<?php 
session_start();

// initializing variables
$username = "";
$email    = "";
$photoname= "";
$hashtag  = "";
$errors   = array(); 

// connect to database
$db = mysqli_connect('$DATABASEIP', 'worker', '$USERPASS', 'website');
$dbs = mysqli_connect('$DATABASESLAVEIP','replica', '$USERPASS','website');

// call the register() function if register_btn is clicked
if (isset($_POST['register_btn'])) {
	register();
}
//call the searchresults function if search button is pressed
if (isset($_POST['searchtext'])){
	$_SESSION['search']= $_POST['searchtext'];
}
//on click 
if (isset($_POST['search_btn'])){
	$_SESSION['search']= $_POST['searchtext'];
	header("Location: searchresults.php");
}
// call the upload() if upload button is pressed
if (isset($_POST['upload_btn'])){
	uploadphoto();
}
// UPLOAD PHOTO Function
function uploadphoto(){
	// call variables with global keyword to make the available
	global $db, $errors, $photoname, $hashtag;

	//recieve form values
	$photoname   = e($_POST['photoname']);
	$hashtag     = e($_POST['hashtag']);
	//form validataion
	if (empty($photoname)){
		array_push($errors, "Photo name is required!");
	}
	if (empty($hashtag)){
		array_push($errors, "Hashtag is required!");
	}
	if (count($errors) == 0) {
		if (count($_FILES) > 0) {
			if (is_uploaded_file($_FILES['userImage']['tmp_name'])) {
	 // Function to get the id from the username in session
			 function getId($username){
			 $db = mysqli_connect('$DATABASEIP', 'worker', '$USERPASS', 'website');
			 $get_id_query = "SELECT `id` FROM `users` WHERE `username` ='".$_SESSION['user']['username']."'";
			 $result = mysqli_query($db, $get_id_query);
			 while($row = mysqli_fetch_assoc($result)){
					 return $row['id'];
			 }
	 }
	 $useridtest= getId($username);
	 
	 // function to retrieve all users data not used at this time
	 
	 
				 
			require "../db.php";
			$imgData = addslashes(file_get_contents($_FILES['userImage']['tmp_name']));
			$imageProperties = getimageSize($_FILES['userImage']['tmp_name']);
			$sql = "INSERT INTO pictures(photo_type, photo, id, photoname, text)
			VALUES('{$imageProperties['mime']}', '{$imgData}', '{$useridtest}', '{$photoname}', '{$hashtag}')";
			$current_id = mysqli_query($conn, $sql) or die("<b>Error:</b> Problem on Image Insert<br/>" . mysqli_error($conn));
			if (isset($current_id)) {
			$_SESSION['msg'] = "Upload Successful";
			header("Location: listImages.php");
			}
		}
         }
	 
     }
}

// REGISTER USER
function register(){
	// call these variables with the global keyword to make them available in function
	global $db, $errors, $username, $email;

	// receive all input values from the form. Call the e() function
	$username    =  e($_POST['username']);
	$email       =  e($_POST['email']);
	$password_1  =  e($_POST['password_1']);
	$password_2  =  e($_POST['password_2']);

// form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array

	if (empty($username)) { 
		array_push($errors, "Username is required"); 
	}
	if (empty($email)) { 
		array_push($errors, "Email is required"); 
	}
	if (empty($password_1)) { 
		array_push($errors, "Password is required"); 
	}
	if ($password_1 != $password_2) {
		array_push($errors, "The two passwords do not match");
	}
	
	if(strlen($password_1) < 8){
		array_push($errors, "Password must be at least 8 characters");
	
	} 

	  // first check the database to make sure 
  // a user does not already exist with the same username and/or email
  $user_check_query = "SELECT * FROM users WHERE username='$username' OR email='$email' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);
  
  if ($user) { // if user exists
    if ($user['username'] === $username) {
      array_push($errors, "Username already exists");
    }
    if ($user['email'] === $email) {
      array_push($errors, "email already exists");
    }
  }


	// register user if there are no errors in the form
		if (count($errors) == 0) {
		$salt = "insertsalthere"; 
		$password = $_POST['password_1'].$salt;
		$password = sha1($password);//encrypt the password before saving in the database

		if (isset($_POST['user_type'])) {
			$user_type = e($_POST['user_type']);
			$query = "INSERT INTO users (username, email, user_type, password) 
					  VALUES('$username', '$email', '$user_type', '$password')";
			mysqli_query($db, $query);
			$_SESSION['success']  = "Your account has been successfully created!";
		}else{
			$query = "INSERT INTO users (username, email, user_type, password) 
					  VALUES('$username', '$email', 'user', '$password')";
			mysqli_query($db, $query);

			// get id of the created user
			$logged_in_user_id = mysqli_insert_id($db);

			$_SESSION['user'] = getUserById($logged_in_user_id); // put logged in user in session
			$_SESSION['success']  = "You are now logged in as user";
			header('location: user/index.php');				
		}
	}
}

// return user array from their id
function getUserById($id){
	global $db;
	$query = "SELECT * FROM users WHERE id=" . $id;
	$result = mysqli_query($db, $query);

	$user = mysqli_fetch_assoc($result);
	return $user;
}

// escape string
function e($val){
	global $db;
	return mysqli_real_escape_string($db, trim($val));
}

function display_error() {
	global $errors;

	if (count($errors) > 0){
		echo '<div class="error">';
			foreach ($errors as $error){
				echo $error .'<br>';
			}
		echo '</div>';
	}
}	
function isLoggedIn()
{
	if (isset($_SESSION['user'])) {
		return true;
	}else{
		return false;
	}
}

// log user out if logout button clicked
if (isset($_GET['logout'])) {
	session_destroy();
	unset($_SESSION['user']);
	header("location: login.php");
}
// call the login() function if register_btn is clicked
if (isset($_POST['login_btn'])) {
	login();
}

// LOGIN USER
function login(){
	global $db, $username, $errors;

	// grap form values
	$username = e($_POST['username']);
	$password = e($_POST['password']);

	// make sure form is filled properly
	if (empty($username)) {
		array_push($errors, "Username is required");
	}
	if (empty($password)) {
		array_push($errors, "Password is required");
	}

	// attempt login if no errors on form
	if (count($errors) == 0) {
		$salt = "insertsalthere"; 
		$password = $_POST['password'].$salt;
		$password = sha1($password);//encrypt the password before saving in the database

		$query = "SELECT * FROM users WHERE username='$username' AND password='$password' LIMIT 1";
		$results = mysqli_query($db, $query);

		if (mysqli_num_rows($results) == 1) { // user found
			// check if user is admin or user
			$logged_in_user = mysqli_fetch_assoc($results);
			if ($logged_in_user['user_type'] == 'admin') {

				$_SESSION['user'] = $logged_in_user;
				$_SESSION['success']  = "You are now logged in as administrator";
				header('location: admin/index.php');		  
			}else{
				$_SESSION['user'] = $logged_in_user;
				$_SESSION['success']  = "You are now logged in as user";

				header('location: user/index.php');
			}
		}else {
			array_push($errors, "Wrong username/password combination");
		}
	}
}
function isadmin()
{
	if (isset($_SESSION['user']) && $_SESSION['user']['user_type'] == 'admin' ) {
		return true;
	}else{
		return false;
	}
}
function isUser()
{
	if (isset($_SESSION['user']) && $_SESSION['user']['user_type'] == 'user' ) {
		return true;
	}else{
		return false;
	}
}

