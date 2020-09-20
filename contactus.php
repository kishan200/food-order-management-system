<?php
session_start();
?>

<html>

  <head>
    <title> Contact | APNA RESTAURANT' </title>
  </head>
  <style type="text/css">
    p
    {
      color: black;
      font-size: 30;
    }
   h2{
      font-family: Roboto-Bold, sans-serif;

     }

    h2:hover{
      color: #009688;
    }
  </style>

 
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  
  <body style="background-image: url(lemon.jpg); background-repeat: no-repeat; background-size: 100%;" >


    <button onClick="topFunction()" id="myBtn" title="Go to top">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </button>
  
    

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
            <li><a href="index.php">Home</a></li>
            <li><a href="aboutus.php">About</a></li>
            <li><a href="feedback.php">feedback</a></li>
             <li class="active"><a href="contactus.php">contact us</a></li>
          </ul>

          <?php


if(isset($_SESSION['login_user1'])){

?>


          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user1']; ?> </a></li>
            <li><a href="myrestaurant.php">MANAGER CONTROL PANEL</a></li>
            <li><a href="logout_m.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
<?php
}
else if (isset($_SESSION['login_user2'])) {
  ?>
           <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user2']; ?> </a></li>
            <li><a href="foodlist.php"><span class="glyphicon glyphicon-cutlery"></span> Food Zone </a></li>
            <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart
              (<?php
              if(isset($_SESSION["cart"])){
              $count = count($_SESSION["cart"]); 
              echo "$count"; 
            }
              else
                echo "0";
              ?>)
             </a></li>
            <li><a href="logout_u.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
  <?php        
}
else {

  ?>

<ul class="nav navbar-nav navbar-right">
            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> Sign Up <span class="caret"></span> </a>
                <ul class="dropdown-menu">
              <li> <a href="customersignup.php"> User Sign-up</a></li>
              <li> <a href="managersignup.php"> Manager Sign-up</a></li>
            
            </ul>
            </li>

            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-log-in"></span> Login <span class="caret"></span></a>
              <ul class="dropdown-menu">
              <li> <a href="customerlogin.php"> User Login</a></li>
              <li> <a href="managerlogin.php"> Manager Login</a></li>
              
            </ul>
            </li>
          </ul>

<?php
}
?>
        </div>

      </div>
    </nav>
   

       
        
          
     
      </div>

      	<h1 align="center"><b><font color="yellow" size="9"  ><br>Contact Us<hr><hr></font></b></h1>

    </div>

	</div >
 <font color="white">
               <div class="col-md-2" >
               
                    <h2 ><b>Phone no 1<hr></b></h2>
                    <p>9512321171</p>
               </div>
               <div class="col-md-2 ">            
                    <h2><b>Phone no 2<hr></b></h2>
                    <p>8141913858</p>
              </div>
              <div class="col-md-4">
                    <h2><b>E-mail<hr></b></h2>
                    <p>abhishekmavani71@gmail.COM</p>
                      <p>sarvaiyakishank@gmail.com</p>
                </div>
              
              <div class="col-md-3">      
                    <h2><b>Address<hr> </b></h2>
                    <p>Palitana,Bhavnagar Road,364270</p>
              </div>
              
  

 	

    <?php
if (isset($_POST['submit'])){
require 'connection.php';
$conn = Connect();

$Name = $conn->real_escape_string($_POST['name']);
$Email_Id = $conn->real_escape_string($_POST['email']);
$Mobile_No = $conn->real_escape_string($_POST['mobile']);
$Subject = $conn->real_escape_string($_POST['subject']);
$Message = $conn->real_escape_string($_POST['message']);

$query = "INSERT into contact(Name,Email,Mobile,Subject,Message) VALUES('$Name','$Email_Id','$Mobile_No','$Subject','$Message')";
$success = $conn->query($query);

if (!$success){
  die("Couldnt enter data: ".$conn->error);
}

$conn->close();
}
?>

     </body>

  
</html>