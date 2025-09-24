<!doctype html>
<?php date_default_timezone_set("Asia/Kuala_Lumpur"); ?>
<html lang="en">
   
	
	<?php 

include('inc/dt.php'); 
include('inc/sesi.php'); 
		
?>

<!-- Mirrored from askbootstrap.com/preview/eatsome/enable-location.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Dec 2024 10:13:00 GMT -->
<head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="img/logo.png" type="image/png">
      <title>Lalal Gold App</title>
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
               <a href="index.html"><i class="bi bi-arrow-left d-flex text-success h2 m-0 back-page"></i></a>
               <h3 class="fw-bold m-0">Redeem Gold Wallet</h3>
            </div>
            <div class="ms-auto gap-3 d-flex align-items-center">
               <a href="notifications.html" class="link-dark"><i class="bi bi-bell d-flex m-0 h2"></i></a>
               <a class="toggle osahan-toggle text-dark m-0" href="#"><i class="bi bi-list d-flex m-0 h1"></i></a>
            </div>
         </div>
      </div>
      <div class="p-3 text-center">
		  
		 <img src="icon/544587.png" width="200" class="center"> 
		  
		<?php 
// Include the qrlib file 
include 'phpqrcode/qrlib.php'; 
$text = $nofon ; 
  
// $path variable store the location where to  
// store image and $file creates directory name 
// of the QR code file by using 'uniqid' 
// uniqid creates unique id based on microtime 
$path = 'qr/'; 
$file = $path.uniqid().".png"; 
  
// $ecc stores error correction capability('L') 
$ecc = 'L'; 
$pixel_Size = 10; 
$frame_Size = 3; 
  
// Generates QR Code and Stores it in directory given 
QRcode::png($text, $file, $ecc, $pixel_Size, $frame_Size); 
  
// Displaying the stored QR code from directory 
//echo "<center><img src='".$file."'></center>"; 
?> 
		  
         <img src="<?php echo $file ?>" alt="" class="img-fluid">
         <div class="text-center">
            <div class="display-4 fw-bold mt-4 mb-2">Scan QR to redeem <br>Lalal Gold Wallet !</div>
            
         </div>
         <div class="pt-4 pb-5"></div>
         <div class="d-grid fixed-bottom gap-2 p-3">
            <a href="index.php" class="btn btn-success btn-lg"><i class="fa-solid fa-home-alt"></i>&nbsp;Home</a>
            
         </div>
      </div>
      <!-- sidebar -->
      
      <!-- Bootstrap core JavaScript -->
      <script src="vender/jquery/jquery.min.js" type="c702ae2cb17cfde71beb163d-text/javascript"></script>
      <script src="vender/bootstrap/js/bootstrap.bundle.min.js" type="c702ae2cb17cfde71beb163d-text/javascript"></script>
      <!-- slick Slider JS-->
      <script src="vender/slick/slick/slick.min.js" type="c702ae2cb17cfde71beb163d-text/javascript"></script>
      <!-- Sidebar JS-->
      <script src="vender/sidebar/hc-offcanvas-nav.js" type="c702ae2cb17cfde71beb163d-text/javascript"></script>
      <!-- Javascript -->
      <script src="js/custom.js" type="c702ae2cb17cfde71beb163d-text/javascript"></script>
   <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="c702ae2cb17cfde71beb163d-|49" defer></script>
	   
</body>

<!-- Mirrored from askbootstrap.com/preview/eatsome/enable-location.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Dec 2024 10:13:01 GMT -->
</html>