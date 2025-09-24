<!doctype html>
 <?php date_default_timezone_set("Asia/Kuala_Lumpur"); ?>
<?php 

include('inc/dt.php'); 
include('inc/sesi.php'); 
$noinvois=mysqli_real_escape_string($conn, $_REQUEST['noinvois']);
?>
<html lang="en">
   
<!-- Mirrored from askbootstrap.com/preview/eatsome/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Dec 2024 10:13:00 GMT -->
<head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="img/logo.png" type="image/png">
      <title>Lalal Gold - Gold Saving Cart</title>
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
      <!-- Luxury Theme CSS -->
      <link rel="stylesheet" href="css/luxury-theme.css">
   </head>
   <body class="bg-light">
      <div class="luxury-container">
         <!-- Luxury Header -->
         <div class="luxury-header">
            <div class="luxury-navbar">
               <div class="d-flex align-items-center">
                  <a href="goldsaving.php" class="luxury-back-btn">
                     <i class="fa-solid fa-arrow-left"></i>
                  </a>
                  <div class="luxury-logo">
                     <div class="crown-logo">
                        <i class="fa-solid fa-crown"></i>
                     </div>
                     <div class="logo-text">
                        <h1>Gold Saving Cart</h1>
                        <span>Premium Gold Trading</span>
                     </div>
                  </div>
               </div>
            </div>
         </div>

         <!-- Cart Content -->
         <div class="luxury-grid">
            <!-- Cart Items -->
            <div class="luxury-card">
               <div class="purchase-header">
                  <div class="purchase-icon">
                     <i class="fa-solid fa-shopping-cart"></i>
                  </div>
                  <div class="purchase-info">
                     <div class="purchase-title">Your Gold Savings</div>
                     <div class="purchase-subtitle">Review your purchase details</div>
                  </div>
               </div>
               
               <?php
               $query=mysqli_query($conn,"select * from saving where noinvois='$noinvois' and username='$username' and status='UNPAID' ");
               while($res=mysqli_fetch_array($query))
               {
                  $bill_id = $res['bill_id'];
                  $berat = $res['berat'];
                  $hargajualcart = number_format($berat * $harganew,2);
               ?>
               
               <div class="purchase-card">
                  <div class="d-flex justify-content-between align-items-center">
                     <div class="purchase-info">
                        <h6 class="purchase-title">Purchase Gold 916</h6>
                        <div class="purchase-details">
                           <div class="detail-item">
                              <i class="fa-solid fa-tag"></i>
                              <span>Price: RM <?php echo $harganew; ?></span>
                           </div>
                           <div class="detail-item">
                              <i class="fa-solid fa-weight-scale"></i>
                              <span>Weight: <?php echo $berat; ?> gm</span>
                           </div>
                        </div>
                     </div>
                     
                     <?php 
                     $query1z=mysqli_query($conn,"SELECT sum(jumlah) as totaljumlah from saving where noinvois='$noinvois' and username='$username' and status='UNPAID'");
                     $res1z=mysqli_fetch_array($query1z);
                     $totaljumlah=$res1z['totaljumlah'];
                     $totaljumlah1 = number_format($totaljumlah,2); 
                     ?>
                     
                     <div class="purchase-amount">
                        <div class="amount-value">RM <?php echo $totaljumlah1; ?></div>
                        <div class="amount-label">Total Amount</div>
                     </div>
                  </div>
               </div>
               
               <?php } ?>
               
               <!-- Add More Items -->
               <div class="text-center mt-4">
                  <a href="goldsaving.php" class="luxury-btn">
                     <i class="fa-solid fa-plus"></i>
                     Buy More Gold Saving
                  </a>
               </div>
            </div>

            <!-- Coupons Section -->
            <div class="luxury-card">
               <a href="coupons.php" class="text-decoration-none">
                  <div class="d-flex justify-content-between align-center">
                     <div class="d-flex align-center gap-2">
                        <div class="feature-icon">
                           <i class="fa-solid fa-tags"></i>
                        </div>
                        <div>
                           <div class="feature-title">Use Coupons</div>
                           <div class="feature-subtitle">Apply discount codes</div>
                        </div>
                     </div>
                     <div class="luxury-icon-btn">
                        <i class="fa-solid fa-angle-right"></i>
                     </div>
                  </div>
               </a>
            </div>

            <!-- Price Summary -->
            <div class="luxury-card summary-card">
               <div class="summary-header">
                  <h3><i class="fa-solid fa-receipt"></i> Order Summary</h3>
               </div>
               
               <div class="summary-stats">
                  <div class="summary-item">
                     <div class="summary-icon">
                        <i class="fa-solid fa-shopping-bag"></i>
                     </div>
                     <div class="summary-content">
                        <div class="summary-value">RM <?php echo $totaljumlah1; ?></div>
                        <div class="summary-label">Item Total</div>
                     </div>
                  </div>
                  
                  <?php
                  $postage = "0" ; 
                  $fee = "1" ;
                  $totaljumlah_fee = $totaljumlah + $postage + $fee ;	 
                  $totaljumlah_fee1 = number_format($totaljumlah_fee,2);
                  ?>
                  
                  <div class="summary-item">
                     <div class="summary-icon">
                        <i class="fa-solid fa-credit-card"></i>
                     </div>
                     <div class="summary-content">
                        <div class="summary-value">RM 1.00</div>
                        <div class="summary-label">Transaction Fee</div>
                     </div>
                  </div>
               </div>
               
               <div class="receipt-total mt-4">
                  <div class="total-label">Grand Total</div>
                  <div class="total-value">RM <?php echo $harga = number_format($totaljumlah+$fee+$postage,2); ?></div>
               </div>
            </div>
         </div>

         <!-- Fixed Bottom Payment Button -->
         <div class="fixed-bottom p-3" style="background: var(--white); border-top: 1px solid var(--gray-200);">
            <form action="payment-generate-gateway-call.php" method="post" enctype="multipart/form-data" class="mb-0 pb-0 bayarcash-form">
               <!-- Hidden Fields -->
               <input type="hidden" name="order_no" id="order_no" class="form-control" value="<?php echo $bill_id; ?>" required>
               
               <?php if($username<>"-"){ ?>	  
               <input type="hidden" name="buyer_ic_no" id="buyer_ic_no" class="form-control" value="<?php echo $nokp; ?>" required>
               <input type="hidden" name="order_amount" id="order_amount" class="form-control" value="<?php echo $totaljumlah_fee; ?>" required>
               <input type="hidden" name="buyer_name" id="buyer_name" class="form-control" value="<?php echo $name; ?>" required>
               <input type="hidden" name="buyer_email" id="buyer_email" class="form-control" value="<?php echo $email; ?>" required>
               <input type="hidden" name="buyer_tel" id="buyer_tel" class="form-control" value="<?php echo $nofon; ?>" required>
               <?php } ?>
               
               <button class="luxury-btn w-100" type="submit" style="padding: var(--spacing-lg); font-size: 1.125rem;">
                  <div class="d-flex justify-content-between align-center">
                     <div></div>
                     <div>Pay RM <?php echo $totaljumlah_fee1 ; ?></div>
                     <div><i class="fa-solid fa-caret-right"></i></div>
                  </div>
               </button>
            </form>
         </div>
      </div>

      <!-- Bootstrap core JavaScript -->
      <script src="vender/jquery/jquery.min.js" type="8fad79633006eb0b91a6ac89-text/javascript"></script>
      <script src="vender/bootstrap/js/bootstrap.bundle.min.js" type="8fad79633006eb0b91a6ac89-text/javascript"></script>
      <!-- slick Slider JS-->
      <script src="vender/slick/slick/slick.min.js" type="8fad79633006eb0b91a6ac89-text/javascript"></script>
      <!-- Sidebar JS-->
      <script src="vender/sidebar/hc-offcanvas-nav.js" type="8fad79633006eb0b91a6ac89-text/javascript"></script>
      <!-- Javascript -->
      <script src="js/custom.js" type="8fad79633006eb0b91a6ac89-text/javascript"></script>
  
</body>

<!-- Mirrored from askbootstrap.com/preview/eatsome/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Dec 2024 10:13:00 GMT -->
</html>