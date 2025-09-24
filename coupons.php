<!doctype html>
 <?php date_default_timezone_set("Asia/Kuala_Lumpur"); ?>
<?php 

include('inc/dt.php'); 
include('inc/sesi.php'); 


	date_default_timezone_set("Asia/Kuala_Lumpur");
extract($_REQUEST);
?>
<html lang="en">
   
<!-- Mirrored from askbootstrap.com/preview/eatsome/coupons.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Dec 2024 10:13:01 GMT -->
<head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="img/logo.png" type="image/png">
      <title>Lalal App</title>
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
      <!-- Navbar -->
      <div class="bg-white shadow-sm p-3">
         <div class="d-flex align-items-center">
            <div class="gap-3 d-flex align-items-center">
               <i class="bi bi-arrow-left d-flex text-success h2 m-0 back-page"></i></a>
               <h3 class="fw-bold m-0"><a href="cart.php"><i class="fa-solid fa-arrow-left"></i></a> Coupon</h3>
            </div>
            
         </div>
      </div>
      <!-- body -->
      <div class="p-3">
         <form>
            <input class="shadow-none form-control border-0 p-0" type="text" placeholder="Enter Coupon Code" aria-label="default input example">
         </form>
      </div>
      <div class="bg-light p-3">
         <h5 class="m-0">Available Coupons</h5>
      </div>
      <div class="p-3">
         
		<?php
							
$query=mysqli_query($conn,"select * from coupon");
while($res=mysqli_fetch_array($query))
{
	$kod = $res['kod'];
	$detail = $res['detail'];
	$valid = $res['valid'];
			?>

		 <div>
            <div class="mb-2">
               <div class="mb-3"><img src="icon/voucher.png" alt="" class="img-fluid ch-40"></div>
               <div class="h4 m-0"><?php echo $detail; ?></div>
            </div>
            <p class="text-muted">Valid on total value of items RM <?php echo $valid; ?>.&nbsp;<span
               class="text-dark">View Details</span></p>
            <div class="d-flex justify-content-between pb-3 align-items-center">
               <div class="text-uppercase fw-bold border border-success text-success rounded px-2 py-1 h5 m-0"><?php echo $kod; ?></div>
               <div><a href="" class="text-decoration-none text-success">Apply</a></div>
            </div>
            
         </div>
         <hr>
         
       <?php } ?>
         
      </div>
      <!-- sidebar -->
      
      <!-- Bootstrap core JavaScript -->
      <script src="vender/jquery/jquery.min.js" type="f01b1485aae253f2ed189d8b-text/javascript"></script>
      <script src="vender/bootstrap/js/bootstrap.bundle.min.js" type="f01b1485aae253f2ed189d8b-text/javascript"></script>
      <!-- slick Slider JS-->
      <script src="vender/slick/slick/slick.min.js" type="f01b1485aae253f2ed189d8b-text/javascript"></script>
      <!-- Sidebar JS-->
      <script src="vender/sidebar/hc-offcanvas-nav.js" type="f01b1485aae253f2ed189d8b-text/javascript"></script>
      <!-- Javascript -->
      <script src="js/custom.js" type="f01b1485aae253f2ed189d8b-text/javascript"></script>
   
</body>

<!-- Mirrored from askbootstrap.com/preview/eatsome/coupons.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Dec 2024 10:13:01 GMT -->
</html>