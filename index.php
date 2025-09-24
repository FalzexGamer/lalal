<!doctype html>
 <?php date_default_timezone_set("Asia/Kuala_Lumpur"); ?>
<?php 

	
      $today= date("Y-m-d");  

include('inc/dt.php'); 
include('inc/sesi.php'); 
include('balance.php');
extract($_REQUEST);
?>
<html lang="en">
   
<!-- Mirrored from askbootstrap.com/preview/eatsome/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Dec 2024 10:12:39 GMT -->
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
   <body class="bg-light">
      <!-- Navbar -->
      <div class="osahan-header-nav px-3 pt-3 d-flex align-items-center bg-success">
         <h5 class="font-weight-normal mb-0 text-white">
            <button type="button" class="btn bg-success text-white border-0 p-0" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
               
				<center><img src="icon/logo2.png" width="200" class="center"></center>
				
            </button>
         </h5>
         <div class="ms-auto gap-3 d-flex align-items-center">
            <a href="#" class="text-white"><i class="bi bi-bell d-flex m-0 h2"></i></a>
            <a class="toggle osahan-toggle text-white m-0" href="#"><i class="bi bi-list d-flex m-0 h1"></i></a>
         </div>
      </div>
      <!-- body -->
      <div class="p-3 bg-success sticky-top shadow-sm">
         <div class="input-group bg-white rounded-md border-0 p-1 mb-3 overflow-hidden">
            <span class="input-group-text border-0 border-end bg-white pe-0"><i class="fa-solid fa-magnifying-glass text-success"></i></span>
           
			 <?php 
			 if(isset($save)){
									
			$carian = mysqli_real_escape_string($conn, $_REQUEST['carian']);	
			
				   echo"<script>window.location.href='products.php?page_no=1&type=ALL&search=$carian';</script>";
			 }
			 ?>
			 
			 <form method="post" enctype="multipart/form-data">
			 
			   <input type="text" id="carian" name="carian" class="shadow-none form-control border-0 border-end" placeholder="Search Jewellery...">
           
			   <button 
    type="submit" 
    name="save" 
    style="display: none;">
</button>
			   
			 </form>
			 
         </div>
         
      </div>
	   
	   <br>
      <!-- Top Brands -->
	   
	   
	  
	   
	 
      <div class="p-3 brands-list">
		  
		  <h3 class="fw-bold mb-3">Welcome, <?php echo $username; ?></h3>
         <h3 class="fw-bold mb-3">My Apps</h3>
         
		
		  <div class="row align-items-end g-4">
			  
			  <div class="col-4">
               <a href="goldsaving_menu.php" class="text-decoration-none link-dark">
                  <div class="card border-0 bg-light">
                     <div class="m-auto back"><img src="icon/goldsaving.png"
                       width="70" alt="#"></div>
                     <div class="card-body text-center px-0 pb-0">
                        <h6 class="card-title mb-1">Gold Wallet</h6>
						 <p class="card-text text-muted"><span>&nbsp;<strong><?php echo $berat_saving; ?> Gm</strong></span></p>
                        
                     </div>
                  </div>
               </a>
            </div>
			  
			   <?php 
			  $query1z=mysqli_query($conn,"select count(recno) as bilpoint,sum(berat) as beratpoint from saving where username='$username' and status='PAID' and transaction='Points'");
	$res1z=mysqli_fetch_array($query1z);
	   
	
	   $bilpoint =$res1z['bilpoint'];
	   $beratpoint=$res1z['beratpoint'];
			  
		  if (empty($beratpoint)) {
    // beratpoint is empty (0, '', null, false, etc.)
     $beratpoint="0.00" ;
} else {
    // beratpoint has value

}
		
			  ?>
			  
			  <?php 
			    $query1z=mysqli_query($conn,"select count(recno) as bilnoti,noinvois from saving where username='$username' and status='PAID' and transaction='Points' and noti='0'");
				$res1z=mysqli_fetch_array($query1z);
	   
			   $bilnoti =$res1z['bilnoti'];
			  $noinvois =$res1z['noinvois'];
			  ?>
			  
			  <?php if($bilnoti>"0"){ 
			   echo"<script>window.location.href='success_point.php?noinvois=$noinvois';</script>";
			  }
			  ?>
			
			  
			  
			  
            <div class="col-4">
               <a href="mypoints.php" class="text-decoration-none link-dark">
                  <div class="card border-0 bg-light">
                     <div class="m-auto back"><img src="icon/point.gif" width="50" alt="#"></div>
                     
                     <div class="card-body text-center px-0 pb-0">
                        <h6 class="card-title mb-1">My Points</h6>
                        <p class="card-text text-muted"><span><i
                           class="fa-solid fa-gift text-success"></i></span>&nbsp;<?php echo $beratpoint; ?> gm</p>
                     </div>
                  </div>
               </a>
            </div>
			  
			  <?php 
			  $query1z=mysqli_query($conn,"SELECT count(recno) as bilvideocall,tarikh as tarikhset from videocall where username='$username' and tarikh>='$today' order by recno asc");
			  $res1z=mysqli_fetch_array($query1z);
	   
			  $bilvideocall=$res1z['bilvideocall'];
			  
			  if($bilvideocall<>"0"){
			  $tarikhset = $res1z['tarikhset'];
			  $tarikhset1 = date('d-m-Y', strtotime($tarikhset));
				  }
			  
			   if($bilvideocall=="0"){
				$tarikhset = "No" ;
				    $tarikhset1 = "No" ;
			   }
			  ?>
			  
            <div class="col-4">
               <a href="video_call.php" class="text-decoration-none link-dark">
                  <div class="card border-0 bg-light">
                     <div class="m-auto back"><img src="icon/videocall.png" width="70" alt="#"
                        >
                     </div>
                     
                     <div class="card-body text-center px-0 pb-0">
                        <h6 class="card-title mb-1">Video Call</h6>
                       
						 <?php if($bilvideocall<>"0"){ ?>
						 <p class="card-text text-muted"><span><i
                           class="fa-solid fa-order text-success"></i></span>&nbsp;On : <?php echo $tarikhset1; ?></p>
						 <?php } ?>
						 
						 	 <?php if($bilvideocall=="0"){ ?>
						 <p class="card-text text-muted"><span><i
                           class="fa-solid fa-order text-success"></i></span>&nbsp;No Appointment</p>
						 <?php } ?>
						 
						 
                     </div>
                  </div>
               </a>
            </div>
            
            <!-- 2nd row -->
            <div class="col-4">
               <a href="goldreservation.php" class="text-decoration-none link-dark">
                  <div class="card border-0 bg-light">
                     <div class="m-auto back"><img src="icon/goldr.png" width="60" alt="#">
                     </div>
                     
                     <div class="card-body text-center px-0 pb-0">
                        <h6 class="card-title mb-1">Jewellery <br>Order</h6>
                       
						   </div>
                  </div>
               </a>
            </div>
			  
			  <div class="col-4">
               <a href="myorder.php" class="text-decoration-none link-dark">
                  <div class="card border-0 bg-light">
                     <div class="m-auto back"><img src="icon/myorder.png" width="45" alt="#"
                        >
                     </div>
                     
                     <div class="card-body text-center px-0 pb-0">
                        <h6 class="card-title mb-1">My <br>Order</h6>
                       
						   </div>
                  </div>
               </a>
            </div>
            
            
            
         </div>
      </div>
      <!-- Eat what make you happy -->
      <div class="p-3 bg-white">
         <h3 class="fw-bold mb-3">Our Products</h3>
         <div class="row align-items-end g-4">
            
			 <div class="col-3">
               <a href="products.php?page_no=1&type=NEW&search=" class="text-decoration-none">
                  <div class="card border-0">
                     <img src="icon/latest1.png" class="img-fluid m-auto ch-70 cw-70" alt="#">
                     <div class="card-body text-center px-0 pb-0">
                        <h6 class="card-title text-muted m-0">Latest</h6>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-3">
               <a href="products.php?page_no=1&type=NEW&search=RING" class="text-decoration-none">
                  <div class="card border-0">
                     <img src="icon/ring.png" class="img-fluid m-auto ch-70 cw-70" alt="#">
                     <div class="card-body text-center px-0 pb-0">
                        <h6 class="card-title text-muted m-0">Rings</h6>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-3">
               <a href="products.php?page_no=1&type=NEW&search=EARING" class="text-decoration-none link-dark">
                  <div class="card border-0">
                     <img src="icon/Earing.png" class="img-fluid m-auto ch-70 cw-70" alt="#">
                     <div class="card-body text-center px-0 pb-0">
                        <h6 class="card-title text-muted m-0">Earing</h6>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-3">
               <a href="products.php?page_no=1&type=NEW&search=ALL" class="text-decoration-none">
                  <div class="card border-0">
                     <img src="icon/all3.png" class="img-fluid m-auto ch-70 cw-70" alt="#">
                     <div class="card-body text-center px-0 pb-0">
                        <h6 class="card-title text-muted m-0">All</h6>
                     </div>
                  </div>
               </a>
            </div>
			 
			 
            <!-- 2nd row -->
            
            
         </div>
         <!-- See more -->
         
      </div>
	   
	   <?php $hidden="0" ; ?>
	   
	   <?php if($hidden=="1"){ ?>
	   <div class="p-3 bg-white">
         <h3 class="fw-bold mb-3">New Jewellery</h3>
         <div class="row align-items-end g-3">
            
			 
		<?php
							
$query=mysqli_query($conn,"select * from emasjualmz where status='0' and jenis='NEW' and showhide='SHOW' limit 10 ");
while($res=mysqli_fetch_array($query))
{
	$nosiri = $res['nosiri'];
	$design= $res['design'];
	$jenis= $res['jenis'];
	$berat= $res['berat'];
	$saiz= $res['saiz'];
	$design= $res['design'];
	$upah= $res['upah'];
	$marhun= $res['marhun'];
	
	$subdesign= $res['subdesign'];
	
		// image parameter
	
	 $query1z=mysqli_query($conn,"SELECT count(recno) as bil_p,img from image_parameter where subdesign='$subdesign' and (dari<='$berat' and hingga>='$berat')");
	$res1z=mysqli_fetch_array($query1z);

	$bil_p=$res1z['bil_p'];
	
	if($bil_p=="0"){
		$img_p = "noimage.jpg" ;
	}
	
	if($bil_p<>"0"){
	$img_p=$res1z['img'];
	}
	
	// end image parameter
	
	//echo "<script>alert('$upah')</script>"; // test echo
	
	if($design=="-"){
		$design="" ;
	}
	
	

	
	$img= $res['img'];
	$statusjual= $res['status'];
	$checkjenis = substr($design, 0, 6);
	
	//echo "<script>alert('$checkjenis')</script>"; // test echo
	
	$panjang= $res['panjang'];
	$lebar= $res['lebar'];
	
	if($jenis=="NEW"){
	$hargajual = $berat * $harganew + $upah ;
		$diskaungram = "0" ;
	$hargajual_diskaun  = ($harganew-$diskaungram) * $berat ; 
	$hargajual_diskaunmember = $harganew * $berat ; 	
	}
	
// image parameter
	
	 $query1z=mysqli_query($conn,"SELECT count(recno) as bil_p,img from image_parameter where subdesign='$subdesign' and (dari<='$berat' and hingga>='$berat')");
	$res1z=mysqli_fetch_array($query1z);

	$bil_p=$res1z['bil_p'];
	
	if($bil_p=="0"){
		$img_p = "noimage.jpg" ;
	}
	
	if($bil_p<>"0"){
	$img_p=$res1z['img'];
	}
	
	// end image parameter
	
	$hargajual1 = number_format($hargajual,2);
	//$hargajual_diskaun1 = number_format($hargajual1,2);
	//$hargajual_diskaunmember1 = number_format($hargajual1,2);
			?>
			 
			 <div class="col-3">
               <a href="products.php?page_no=1&type=NEW&search=" class="text-decoration-none">
                  <div class="card border-0">
                     <img src="../product_image/<?php echo $img_p; ?>" class="img-fluid m-auto ch-70 cw-70" alt="#">
                     <div class="card-body text-center px-0 pb-0">
                        <h6 class="card-title text-muted m-0"><?php echo $marhun; ?></h6>
				<p class="card-text text-muted"><span></span>&nbsp; <small>W :<?php echo $berat; ?> Gm</small>
						 <br>RM <?php echo $hargajual1; ?>
						 </p>
						 
                     </div>
                  </div>
               </a>
            </div>
            
			 <?php } ?>
             <!-- 2nd row -->
             <?php } ?>
            
         </div>
         <!-- See more -->
         
      </div>
      <!-- Resturant around you -->
      <div class="p-3">
         
         <div class="row gy-3">
            <!-- 1st product -->
            <div class="col-12 col-md-4">
               <a href="goldsaving.php" class="text-decoration-none link-dark">
                  <div class="card rounded-4 shadow border-0 overflow-hidden">
                     <div class="position-relative">
                        <div class="product-back"><img
                           src="../assets/images/slideshow/19122024142908lalagold1-02.jpg"
                           alt="" class="img-fluid rounded-top"></div>
                        <!-- product time  -->
                        <div class="product-time shadow-sm position-absolute bottom-0 end-0 m-3">
                           
                        </div>
                        <!-- product off -->
                        <div class="product-off bg-success p-2 rounded-2 shadow-sm position-absolute top-0 end-0 m-3">
                           <div class="d-flex align-items-start gap-1 fw-bold text-white">
                              <div><i class="fa-solid fa-percent fs-5"></i></div>
                              <div>
                                 <div>10% Free Gold</div>
                                 <div class="fw-normal">Up to RM50</div>
                              </div>
                           </div>
                        </div>
                        <!-- Extra product off -->
                        
                     </div>
                     <div class="card-body">
                        <div class="d-flex justify-content-between">
                           <div class="h4 fw-bold">Get free gold on every purchase at Lalal Gold</div>
                           <div><span class="badge bg-success">4.2&nbsp;<i class="fa-solid fa-star"></i></span>
                           </div>
                        </div>
                        <div class="d-flex justify-content-between text-muted h6 m-0 fw-normal">
                           <div>Reedem gold or get discount price </div>
                           
                        </div>
                     </div>
                     
                  </div>
               </a>
            </div>
            <!-- 2nd product -->
            <div class="col-12 col-md-4">
               <a href="#" class="text-decoration-none link-dark">
                  <div class="card rounded-4 shadow border-0 overflow-hidden">
                     <div class="position-relative">
                        
                        <div class="product-back-two"><img
                           src="../assets/images/slideshow/19122024142839lalagold1-01.jpg"
                           alt="" class="img-fluid rounded-top"></div>
                        <!-- product time  -->
                        <div class="product-time shadow-sm position-absolute bottom-0 end-0 m-3">
                           
                        </div>
                     </div>
                     <div class="card-body">
                        <div class="d-flex justify-content-between">
                           <div class="h4 fw-bold">Happy New Year 2025</div>
                           
                        </div>
                        <div class="d-flex justify-content-between text-muted h6 m-0 fw-normal">
                           <div>5% Discount Up to RM 20</div>
                          
                        </div>
                     </div>
                     
                  </div>
               </a>
            </div>
            <!-- 3rd product -->
            
            <!-- 4rth product -->
            
            <!-- 5th product -->
            
         </div>
      </div>
      <div class="pt-4 pb-5"></div>
      <!-- Fixed Bottom -->
      <?php include('inc/navbar.php') ?>
      <!-- Model -->
      <!-- location Modal -->
      
      <!-- Sort by -->
      <!-- Modal -->
      
      <!-- sidebar -->
      
      <!-- Bootstrap core JavaScript -->
      <script src="vender/jquery/jquery.min.js" type="b7a5ce9b1376e270b6c44aea-text/javascript"></script>
      <script src="vender/bootstrap/js/bootstrap.bundle.min.js" type="b7a5ce9b1376e270b6c44aea-text/javascript"></script>
      <!-- slick Slider JS-->
      <script src="vender/slick/slick/slick.min.js" type="b7a5ce9b1376e270b6c44aea-text/javascript"></script>
      <!-- Sidebar JS-->
      <script src="vender/sidebar/hc-offcanvas-nav.js" type="b7a5ce9b1376e270b6c44aea-text/javascript"></script>
      <!-- Javascript -->
      <script src="js/custom.js" type="b7a5ce9b1376e270b6c44aea-text/javascript"></script>
   <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="b7a5ce9b1376e270b6c44aea-|49" defer></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/vcd15cbe7772f49c399c6a5babf22c1241717689176015" integrity="sha512-ZpsOmlRQV6y907TI0dKBHq9Md29nnaEIPlkf84rnaERnq6zvWvPUqr2ft8M1aS28oN72PdrCzSjY4U6VaAw1EQ==" data-cf-beacon='{"rayId":"8ee3bcc9796bfd30","version":"2024.10.5","r":1,"serverTiming":{"name":{"cfExtPri":true,"cfL4":true,"cfSpeedBrain":true,"cfCacheStatus":true}},"token":"dd471ab1978346bbb991feaa79e6ce5c","b":1}' crossorigin="anonymous"></script>
</body>

<!-- Mirrored from askbootstrap.com/preview/eatsome/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Dec 2024 10:12:52 GMT -->
</html>