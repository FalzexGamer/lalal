<!doctype html>
 <?php date_default_timezone_set("Asia/Kuala_Lumpur"); ?>
<?php 

include('inc/dt.php'); 
include('inc/sesi.php'); 
include('balance.php');

	date_default_timezone_set("Asia/Kuala_Lumpur");
extract($_REQUEST);
?>
<html lang="en">
	
		<?php
$uniqid = uniqid();
$rand_start = rand(1,5);
$rand_8_char = substr($uniqid,$rand_start,8);
			
		$record_id = $rand_8_char; 	
		$bill_id_update = "INV_" . $record_id	 

?>
	
	<?php 
									if(isset($save)){
									
			$jumlah = mysqli_real_escape_string($conn, $_REQUEST['jumlah']);	
						
						
									
					if($jumlah<>""){							
			$berat = $jumlah / $harganew ;						
		     $berat = number_format($berat, 4, '.', '') ; 
											
		$uniqid = uniqid();
$rand_start = rand(1,5);
$rand_8_char = substr($uniqid,$rand_start,8);
			
		$noinv = "INV-" . $rand_8_char; 
						
					
					$totalberat1 = $berat + $berat_saving  ; 
						
						if($jumlah>="10"){
						
			if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

								//echo "<script>alert('$berat')</script>"; // test echo		
							
$sql = "INSERT INTO saving (`noinvois`,`tarikh`, `masa`, `nokp`, `username`,`transaction`, `hargaemas`, `berat`, `jumlah`,`beratsemasa`,`status`,`bill_id`)
VALUES ('$noinv',CURDATE(), CURTIME(), '$nokp','$username','Purchase','$harganew','$berat','$jumlah','$totalberat1','UNPAID','$bill_id_update')";

if ($conn->query($sql) === TRUE) {
	echo"<script>window.location.href='savingcart.php?noinvois=$noinv';</script>";
	
 //echo"<script>window.location.href='success.php?noinvois=$noinv';</script>";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}	
				
							} else {
						$message = "Minimun Purchase RM 10 !";
					}
						
						}	
						
					
									
		}
				?>
	
		
			
			   <?php
			  
			  $rankc1=mysqli_query($con,"SELECT sum(berat) as beratblock FROM `blokgoldbar`  ");							
			  $resrankc1=mysqli_fetch_array($rankc1);
			  	$beratblock1 = $resrankc1['beratblock'];
			$beratblock = $resrankc1['beratblock'];

                    	  $rankc1=mysqli_query($con,"SELECT sum(berat) as beratbeli FROM `saving` where status='PAID' and transaction='Purchase'  ");						
			  			$resrankc1=mysqli_fetch_array($rankc1);
			  $beratbeli1 = $resrankc1['beratbeli'];
				
				/////////////////////////
				
				$rankc1=mysqli_query($con,"SELECT sum(berat) as beratcoin FROM `saving` WHERE status='PAID' and transaction='Purchase' ");
			$resrankc1=mysqli_fetch_array($rankc1);
									
		$beratcoin1 = $resrankc1['beratcoin'];	
		$beratcoin = $resrankc1['beratcoin'];
		
		 if (empty($beratcoin)) {
   $beratcoin = 0.00;
}
						
			//////// jual
					
		
						
			/////////			
		$beratcoinx = $beratcoin ;
				
				//////////////////////////
				
				
				
						$beratbeli = $beratcoinx ;

$balance1 = $beratblock1 - $beratbeli ; 
			 
			  $valuesafebox = $beratblock * $harganew ;  

                     ?>
			
			<?php 
			
			$rank4a=mysqli_query($con,"select sum(berat) as blok from blokgoldbar");
			$resrank4a=mysqli_fetch_array($rank4a);
	
			$blokgold=$resrank4a['blok'];
					
			
//	echo "<script>alert('$bilpendingcawangan')</script>"; 
	
			?>
			
			<?php 
	
			$rankc1=mysqli_query($con,"SELECT sum(berat) as beratwithdraw FROM `saving` WHERE status='PAID' and transaction='Wallet' ");
			$resrankc1=mysqli_fetch_array($rankc1);
									
		$beratwithdraw1 = $resrankc1['beratwithdraw'];	
		$beratwithdraw = $resrankc1['beratwithdraw'];
		
			$beratwithdraw_p = 	$beratwithdraw * -1 ; 						
			
										
		 if (empty($beratwithdraw)) {
   $beratwithdraw = 0.00;
}
	
	            ?>
				
				<?php 
	
			$rankc1=mysqli_query($con,"SELECT sum(berat) as gold_deduct FROM `saving` WHERE status='PAID' and transaction='Gold Saving Deduction' ");
			$resrankc1=mysqli_fetch_array($rankc1);
									
		$gold_deduct1 = $resrankc1['gold_deduct'];	
		$gold_deduct = $resrankc1['gold_deduct'];
				
				$gold_deduct_p = $gold_deduct * -1 ; 
		
		 if (empty($gold_deduct)) {
   $gold_deduct = 0.00;
}
			
			$balance1 = $beratblock1 - $beratbeli ; 
	
	            ?>
   
<!-- Mirrored from askbootstrap.com/preview/eatsome/add-card.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Dec 2024 10:13:03 GMT -->
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
      <!-- navbar -->
      <div class="bg-white shadow-sm p-3">
         <div class="d-flex align-items-center">
            <div class="gap-3 d-flex align-items-center">
               <a href="index.php"><i class="bi bi-arrow-left d-flex text-danger h2 m-0 back-page"></i></a>
               <h3 class="fw-bold m-0"><a href="index.php"><i class="fa-solid fa-arrow-left"></i></a> Gold Saving</h3>
            </div>
            
         </div>
      </div>
      <!-- body -->
	   
	  
	   
      <div class="p-3">
		  
		  
		  
		   <center><img src="icon/goldsaving.png" width="150"></center>
         <br><div class="mb-4">
            <h4>Purchase gold as low as RM 10.00</h4>
            
         </div>
		  
		  
		  
         <form class="mb-4">
			 
			 <div class="mb-0">
               <label class="form-label text-muted">Buy Price 916</label>
               <div class="d-flex gap-2">
                  <input type="radio" class="btn-check" name="btnradio" id="btnradio1">
                  <label class="btn btn-outline-success btn-sm" for="btnradio1">RM <?php echo $harganew; ?></label>
                  
               </div>
            </div>
			 
			 <br><div class="mb-0">
               <label class="form-label text-muted">Purity</label>
               <div class="d-flex gap-2">
                  <input type="radio" class="btn-check" name="btnradio" id="btnradio916">
                  <label class="btn btn-outline-success btn-sm" for="btnradio1">916</label>
				   
				   
                  
               </div>
            </div>
			 <form method="post" enctype="multipart/form-data">
           <br> <div class="mb-3">
               <label class="form-label text-muted">Amount RM</label>
               
			 <input type="number" id="jumlah" name="jumlah" placeholder="0.00" class="shadow-none form-control" oninput="goldconverter(this.value)" onchange="goldconverter(this.value)" placeholder="RM 0.00" required>
			 
            </div>
            
            <script>
function goldconverter(valNum) {
   document.getElementById("saving_out").innerHTML = (valNum / <?php echo $harganew; ?>).toFixed(3);
}
</script>
						
								
								<?php 
		  if(isset($message))
		  {
			echo '<font color="#FFFFFF"><div class="form-group">
            <h6 class="bg-danger" style="padding:10px;border-radius:5px">'.$message.'</h6></div></font>';	  
		  }
		  ?>
								
							<p class="wallet-txt3">Gold Purchase : <span id="saving_out"> </span> gm
            
      
         <hr>
         <div class="text-muted"> 
			 
			 <h4>Terms and conditions of purchasing digital gold</h4>
			 
			 <li><strong>Eligibility</strong>
            <ul>
                <li>Must be at least 18 years old (or legal age as per local regulations).</li>
                <li>A valid government-issued ID is required for account verification.</li>
            </ul>
        </li>
        <li><strong>Minimum Purchase Amount</strong>
            <ul>
                <li>The minimum purchase starts at RM10 (or equivalent in local currency).</li>
            </ul>
        </li></div>
      </div>
      <div class="p-5"></div>
      <!-- fixed bottom -->
      <div class="fixed-bottom bg-white p-3">
         <button class="btn btn-success btn-lg d-grid w-100" type="submit" name="save">Buy Now</button>
      </div>
	   
	  </form>
      <!-- sidebar -->
      
	   
	   <nav id="main-nav">
         <ul class="second-nav">
            <li>
               <a href="edit-profile.html" class="bg-danger sidebar-user d-flex align-items-center p-3 border-0 mb-0 rounded-4">
                  <img src="img/user.jpg" class="img-fluid rounded-pill me-3 ch-50" alt="#">
                  <div class="text-white">
                     <h6 class="mb-0">Hi Your Name</h6>
                     <small>+91 12345-67890</small><br>
                     <span class="f-10 text-white-50">Version 1.32</span>
                  </div>
               </a>
            </li>
            <li><a href="index.html"><i class="bi bi-house me-2"></i> Homepage</a></li>
            <li><a href="enable-location.html"><i class="bi bi-geo-alt me-2"></i> Enable Location</a></li>
            <li><a href="location.html"><i class="bi bi-geo me-2"></i> Add Location</a></li>
            <li>
               <a href="#"><i class="bi bi-key me-2"></i> Authentication</a>
               <ul>
                  <li><a href="signup.html">Sign In/Up</a></li>
                  <li><a href="otp-verify.html">Verification</a></li>
               </ul>
            </li>
            <li><a href="coupons.html"><i class="bi bi-ticket-detailed me-2"></i> Coupons</a></li>
            <li><a href="offers.html"><i class="bi bi-percent me-2"></i> Offers</a></li>
            <li><a href="wallet.html"><i class="bi bi-wallet me-2"></i> Wallet</a></li>
            <li><a href="notification-setting.html"><i class="bi bi-bell-slash me-2"></i> Notification Setting</a></li>
            <li><a href="notifications.html"><i class="bi bi-bell me-2"></i> Notifications</a></li>
            <li><a href="setting.html"><i class="bi bi-gear me-2"></i> Setting</a></li>
            <li><a href="search-list.html"><i class="bi bi-search me-2"></i> Search List</a></li>
            <li><a href="store.html"><i class="bi bi-shop me-2"></i> Store</a></li>
            <li><a href="cart.html"><i class="bi bi-bag me-2"></i> Cart</a></li>
            <li><a href="checkout.html"><i class="bi bi-cart me-2"></i> Checkout</a></li>
            <li><a href="payment.html"><i class="bi bi-credit-card me-2"></i> Payment</a></li>
            <li><a href="add-card.html"><i class="bi bi-credit-card-2-front me-2"></i> Add Card</a></li>
            <li><a href="personal-info.html"><i class="bi bi-person me-2"></i> Personal Info</a></li>
            <li><a href="edit-profile.html"><i class="bi bi-pencil me-2"></i> Edit Profile</a></li>
            <li><a href="my-address.html"><i class="bi bi-map me-2"></i> My Address</a></li>
            <li><a href="your-order.html"><i class="bi bi-view-list me-2"></i> Your Order</a></li>
            <li><a href="order-confirm.html"><i class="bi bi-bag-check me-2"></i> Order Confirm</a></li>
            <li><a href="order-details.html"><i class="bi bi-list-nested me-2"></i> Order Details</a></li>
            <li><a href="support.html"><i class="bi bi-question-circle me-2"></i> Support</a></li>
         </ul>
         <ul class="bottom-nav">
            <li class="email">
               <a class="text-danger nav-item text-center" href="index.html" tabindex="0">
                  <p class="h5 m-0"><i class="icofont-ui-home text-danger"></i></p>
                  Home
               </a>
            </li>
            <li class="github">
               <a href="offers.html" class="nav-item text-center" tabindex="0">
                  <p class="h5 m-0"><i class="icofont-sale-discount"></i></p>
                  Offer
               </a>
            </li>
            <li class="ko-fi">
               <a href="support.html" class="nav-item text-center" tabindex="0">
                  <p class="h5 m-0"><i class="icofont-support-faq"></i></p>
                  Help
               </a>
            </li>
         </ul>
      </nav>
      <!-- Bootstrap core JavaScript -->
      <script src="vender/jquery/jquery.min.js" type="c0759a6ccd477d2b3ac3dc3e-text/javascript"></script>
      <script src="vender/bootstrap/js/bootstrap.bundle.min.js" type="c0759a6ccd477d2b3ac3dc3e-text/javascript"></script>
      <!-- slick Slider JS-->
      <script src="vender/slick/slick/slick.min.js" type="c0759a6ccd477d2b3ac3dc3e-text/javascript"></script>
      <!-- Sidebar JS-->
      <script src="vender/sidebar/hc-offcanvas-nav.js" type="c0759a6ccd477d2b3ac3dc3e-text/javascript"></script>
      <!-- Javascript -->
      <script src="js/custom.js" type="c0759a6ccd477d2b3ac3dc3e-text/javascript"></script>
   <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="c0759a6ccd477d2b3ac3dc3e-|49" defer></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/vcd15cbe7772f49c399c6a5babf22c1241717689176015" integrity="sha512-ZpsOmlRQV6y907TI0dKBHq9Md29nnaEIPlkf84rnaERnq6zvWvPUqr2ft8M1aS28oN72PdrCzSjY4U6VaAw1EQ==" data-cf-beacon='{"rayId":"8ee3bd4fdf0f7703","version":"2024.10.5","r":1,"serverTiming":{"name":{"cfExtPri":true,"cfL4":true,"cfSpeedBrain":true,"cfCacheStatus":true}},"token":"dd471ab1978346bbb991feaa79e6ce5c","b":1}' crossorigin="anonymous"></script>
</body>

<!-- Mirrored from askbootstrap.com/preview/eatsome/add-card.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Dec 2024 10:13:03 GMT -->
</html>