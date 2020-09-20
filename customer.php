<?php
include('session_m.php');

if(!isset($login_session)){
header('Location: managerlogin.php'); 
}

?>
<!DOCTYPE html>
<html>

  <head>
    <title> Manager Login |APNA RESTAURANT' </title>
  </head>

  <link rel="stylesheet" type = "text/css" href ="css/view_order_details.css">
  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <body style="background-image: url(lemon.jpg);  background-size: 100%;" >


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
            <li><a href="contactus.php">contach us</a></li>
          </ul>

          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $login_session; ?> </a></li>
            <li class="active"> <a href="managerlogin.php">MANAGER CONTROL PANEL</a></li>
            <li><a href="logout_m.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
        </div>

      </div>
    </nav>





<div class="container" align="center" style="font-size: 22px; color: black;"><br> 
     <h1><b>Hello Manager! </h1>
     <p>Manage all your restaurant from here</b></p>

    </div>


    
    	<div class="col-xs-3" style="text-align: center; ">

    	<div class="list-group">
    		<a href="myrestaurant.php" class="list-group-item ">My Restaurant</a>
    		<a href="view_food_items.php" class="list-group-item">View Food Items</a>
    		<a href="add_food_items.php" class="list-group-item ">Add Food Items</a>
    		<a href="edit_food_items.php" class="list-group-item ">Edit Food Items</a>
    		<a href="delete_food_items.php" class="list-group-item ">Delete Food Items</a>
        <a href="view_order_details.php" class="list-group-item ">View Order Details</a>
        <a href="ShowFeedback.php" class="list-group-item ">Show Feedback</a>
        <a href="customer.php" class="list-group-item active">custemer view</a>
    	</div>
    </div>
    


    
    <div class="col-xs-9">
      <div class="form-area" style="padding: 0px 100px 100px 100px;">
        <form action="" method="POST">
        <br style="clear: both">
          <h3 style="margin-bottom: 25px; text-align: center; font-size: 30px; color: black;" ><b> CUSTOMER  DETAIL</b> </h3>


<?php




// Storing Session
$user_check=$_SESSION['login_user1'];
$sql = "SELECT * FROM customer";
$result = mysqli_query($conn, $sql);


if (mysqli_num_rows($result) > 0)
{

  ?>

  <table class="table table-striped">
    <thead class="thead-dark">
      <tr style="color: black; background-color: #3377ff;">
        <th>  </th>
        <th> username </th>
        <th>fullname</th>
        <th > email </th>
        <th> contact </th>
        <th> address </th>
      
      </tr>
    </thead>

    <?PHP
      //OUTPUT DATA OF EACH ROW
      while($row = mysqli_fetch_assoc($result)){
    ?>

  <tbody >
    <tr>
      <td > <span class="glyphicon glyphicon-menu-right"></span> </td>
      <td ><?php echo $row["username"]; ?></td>
      <td><?php echo $row["fullname"]; ?></td>
      <td><?php echo $row["email"]; ?></td>
      <td><?php echo $row["contact"]; ?></td>
      <td class="col-md-9"><?php echo $row["address"]; ?></td>
    
     <?php 

      {
        ?>

     
 <?php 
    }

?>
      
    </tr>
  </tbody>
  
  <?php } ?>
  </table>
    <br>


  <?php } else { ?>

  <h4><center>0 RESULTS</center> </h4>

  <?php } ?>

        </form>

        
        </div>
      
    </div>
</div>
<br>
<br>
<br>
<br>
  
  </body>
</html>