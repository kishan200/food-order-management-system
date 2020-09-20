<html>

  <head>
    <title> Manager Login | APNA RESTAURANT' </title>
  </head>

  <link rel="stylesheet" type = "text/css" href ="css/manager_registered_success.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

   <body style="background-image: url(lemon.jpg); background-repeat: no-repeat; background-size: 100%;" >

  
    
    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">APNA RESTAURANT'</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li class="active" ><a href="index.php">Home</a></li>
            <li><a href="aboutus.php">About</a></li>
            <li><a href="feedback.php">feedback</a></li>
             <li><a href="contactus.php">Contact Us</a></li>
          </ul>

          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up </a></li>
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login </a></li>
          </ul>
        </div>

      </div>
    </nav>

<?php

require 'connection.php';
$conn = Connect();

$fullname = $conn->real_escape_string($_POST['fullname']);
$username = $conn->real_escape_string($_POST['username']);
$email = $conn->real_escape_string($_POST['email']);
$contact = $conn->real_escape_string($_POST['contact']);
$address = $conn->real_escape_string($_POST['address']);
$password = $conn->real_escape_string($_POST['password']);

$query = "INSERT into CUSTOMER(fullname,username,email,contact,address,password) VALUES('" . $fullname . "','" . $username . "','" . $email . "','" . $contact . "','" . $address ."','" . $password ."')";
$success = $conn->query($query);

if (!$success){
	die("Couldnt enter data: ".$conn->error);
}

$conn->close();

?>


<div class="container"  style="text-align: center;">
		<h1 style="color: black; "> <?php echo "Welcome $fullname!" ?> </h2>
		<p style="color: black; font-size: 55;">Your account has been created.</p>
		<p style="color: black; font-size: 35;">Login Now from <a href="customerlogin.php">HERE</a></p>
	</div>
</div>

    </body>
</html>