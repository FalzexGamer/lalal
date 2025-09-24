<!doctype html>
<html lang="en">
	<?php date_default_timezone_set("Asia/Kuala_Lumpur"); ?>
		<?php 

include('inc/dt.php'); 
include('inc/sesi.php'); 
	extract($_REQUEST);
	$noinvois=mysqli_real_escape_string($conn, $_REQUEST['noinvois']);
	
		$query1z=mysqli_query($conn,"SELECT * from saving where noinvois='$noinvois' and username='$username'");
	$res1z=mysqli_fetch_array($query1z);

	$berat=$res1z['berat'];
	
	if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "UPDATE saving SET noti='1' WHERE noinvois='$noinvois' and username='$username'";

if ($conn->query($sql) === TRUE) {
  //echo "Record updated successfully";
} else {
  //echo "Error updating record: " . $conn->error;
}
?>
<html lang="en">
   
<!-- Mirrored from askbootstrap.com/preview/eatsome/order-confirm.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Dec 2024 10:13:03 GMT -->
<head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="img/logo.png" type="image/png">
      <title>Received Free Gold</title>
      <!-- Bootstrap Css -->
      <link rel="stylesheet" href="vender/bootstrap/css/bootstrap.min.css">
      <!-- Icofont -->
      <link rel="stylesheet" href="vender/icons/icofont.min.css">
      <!-- Slick SLider Css -->
      <link rel="stylesheet" href="vender/slick/slick/slick.css">
      <link rel="stylesheet" href="vender/slick/slick/slick-theme.css">
      <!-- Font Awesome Icon -->
      <link href="vender/fontawesome/css/all.min.css" rel="stylesheet">
      <!-- Sidebar CSS -->
      <link href="vender/sidebar/demo.css" rel="stylesheet">
      <!-- Custom Css -->
      <link rel="stylesheet" href="css/style.css">
   </head>
   <body>
      <div class="bg-white shadow-sm p-3">
         <div class="d-flex align-items-center">
            <div class="gap-3 d-flex align-items-center">
               <a href="index.php"><i class="bi bi-arrow-left d-flex text-success h2 m-0 back-page"></i></a>
               <h3 class="fw-bold m-0">Gold Wallet</h3>
            </div>
            <div class="ms-auto gap-3 d-flex align-items-center">
               <a href="notifications.html" class="link-dark"><i class="bi bi-bell d-flex m-0 h2"></i></a>
               <a class="toggle osahan-toggle text-dark m-0" href="#"><i class="bi bi-list d-flex m-0 h1"></i></a>
            </div>
         </div>
      </div>
      <div class="my-5">
         <div class="text-center">
            <div class="mb-3 px-5"><img src="icon/point.gif" class="img-fluid px-5" alt="#"></div>
            <div class="h1 text-success mb-1">Congratulation! You have received <?php echo $berat ?> gm of gold wallet <br><h4>You can redeem it or sell it to earn money.</h4></div>
            
         </div>
      </div>
      <!-- buttons -->
      <div class="d-grid fixed-bottom gap-2 p-3">
        
         <a href="index.php" class="btn btn-success btn-lg">Home</a>
      </div>
      <!-- sidebar -->
      
      <!-- Bootstrap core JavaScript -->
      <script src="vender/jquery/jquery.min.js" type="ac6ad23d2f9f2418506eafc0-text/javascript"></script>
      <script src="vender/bootstrap/js/bootstrap.bundle.min.js" type="ac6ad23d2f9f2418506eafc0-text/javascript"></script>
      <!-- slick Slider JS-->
      <script src="vender/slick/slick/slick.min.js" type="ac6ad23d2f9f2418506eafc0-text/javascript"></script>
      <!-- Sidebar JS-->
      <script src="vender/sidebar/hc-offcanvas-nav.js" type="ac6ad23d2f9f2418506eafc0-text/javascript"></script>
      <!-- Javascript -->
      <script src="js/custom.js" type="ac6ad23d2f9f2418506eafc0-text/javascript"></script>
   
</body>

<!-- Mirrored from askbootstrap.com/preview/eatsome/order-confirm.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Dec 2024 10:13:04 GMT -->
</html>