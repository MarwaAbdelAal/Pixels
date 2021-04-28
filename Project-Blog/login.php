<?php
session_start();
require('connection.php');
if (isset($_POST['username']) && isset($_POST['password'])){

$username = $_POST['username'];
$password = sha1($_POST['password']);
$query = $db->prepare("SELECT id FROM `users` WHERE username='$username' and password='$password'");
$query->execute();

$count = $query->rowCount();
if ($count == 1){
$_SESSION['username'] = $username;
foreach($query as $row)
{
    $_SESSION['user_id'] = $row['id'];
}
header("location:profile.php"); //header to redirect, but doesnt work
}else{
echo "Invalid Login Credentials.";
}
}

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	 crossorigin="anonymous">
</head>
<body>

<form method="post" class=" w-50 m-auto" style="padding-top:150px">

  <div class="form-group">
    <label for="exampleInputUsername">Username</label>
    <input type="text" class="form-control" id="exampleInputUsername" name="username" placeholder="Username">
    <small class="form-text text-muted">We'll never share your Username with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>

</form>
    
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	 crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	 crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	 crossorigin="anonymous"></script>

</body>
</html>