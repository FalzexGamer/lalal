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
//  echo "Error: " . $sql . "<br>" . $conn->error;
}	
				
							} else {
						$message = "Minimun Purchase RM 10 !";
					}
						
						}	
						
					
									
		}
				?>
	
		
			
			   <?php
			  
			  $rankc1=mysqli_query($conn,"SELECT sum(berat) as beratblock FROM `blokgoldbar`  ");							
			  $resrankc1=mysqli_fetch_array($rankc1);
			  	$beratblock1 = $resrankc1['beratblock'];
			$beratblock = $resrankc1['beratblock'];

                    	  $rankc1=mysqli_query($conn,"SELECT sum(berat) as beratbeli FROM `saving` where status='PAID' and transaction='Purchase'  ");						
			  			$resrankc1=mysqli_fetch_array($rankc1);
			  $beratbeli1 = $resrankc1['beratbeli'];
				
				/////////////////////////
				
				$rankc1=mysqli_query($conn,"SELECT sum(berat) as beratcoin FROM `saving` WHERE status='PAID' and transaction='Purchase' ");
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
			
			$rank4a=mysqli_query($conn,"select sum(berat) as blok from blokgoldbar");
			$resrank4a=mysqli_fetch_array($rank4a);
	
			$blokgold=$resrank4a['blok'];
					
			
//	echo "<script>alert('$bilpendingcawangan')</script>"; 
	
			?>
			
			<?php 
	
			$rankc1=mysqli_query($conn,"SELECT sum(berat) as beratwithdraw FROM `saving` WHERE status='PAID' and transaction='Wallet' ");
			$resrankc1=mysqli_fetch_array($rankc1);
									
		$beratwithdraw1 = $resrankc1['beratwithdraw'];	
		$beratwithdraw = $resrankc1['beratwithdraw'];
		
			$beratwithdraw_p = 	$beratwithdraw * -1 ; 						
			
										
		 if (empty($beratwithdraw)) {
   $beratwithdraw = 0.00;
}
	
	            ?>
				
				<?php 
	
			$rankc1=mysqli_query($conn,"SELECT sum(berat) as gold_deduct FROM `saving` WHERE status='PAID' and transaction='Gold Saving Deduction' ");
			$resrankc1=mysqli_fetch_array($rankc1);
									
		$gold_deduct1 = $resrankc1['gold_deduct'];	
		$gold_deduct = $resrankc1['gold_deduct'];
				
				$gold_deduct_p = $gold_deduct * -1 ; 
		
		 if (empty($gold_deduct)) {
   $gold_deduct = 0.00;
}
			
			$balance1 = $beratblock1 - $beratbeli ; 
	
	            ?>
   
<head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="img/logo.png" type="image/png">
      <title>Lalal Gold - Premium Gold Saving</title>
      
      <!-- Google Fonts -->
      <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Playfair+Display:wght@400;500;600;700&display=swap" rel="stylesheet">
      
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
      <!-- Custom Css -->
      <link rel="stylesheet" href="css/style.css">
      
      <style>
        /* Additional Luxury Styles for Gold Saving Page */
        .luxury-gold-saving {
          background: linear-gradient(135deg, #013220 0%, #024a2f 100%);
          min-height: 100vh;
          color: #FFFFFF;
        }
        
        .luxury-header-gold {
          background: rgba(255, 255, 255, 0.1);
          backdrop-filter: blur(20px);
          border-bottom: 1px solid rgba(255, 215, 0, 0.2);
          padding: 1rem 1.5rem;
        }
        
        .luxury-back-btn-gold {
          background: rgba(255, 215, 0, 0.2);
          border: 1px solid rgba(255, 215, 0, 0.3);
          color: #FFD700;
          width: 45px;
          height: 45px;
          border-radius: 12px;
          display: flex;
          align-items: center;
          justify-content: center;
          text-decoration: none;
          transition: all 0.3s ease;
          backdrop-filter: blur(10px);
        }
        
        .luxury-back-btn-gold:hover {
          background: rgba(255, 215, 0, 0.3);
          transform: translateX(-3px);
          color: #FFD700;
          box-shadow: 0 8px 25px rgba(255, 215, 0, 0.3);
        }
        
        .luxury-title-gold {
          color: #FFD700;
          font-family: 'Playfair Display', serif;
          font-weight: 600;
          margin: 0;
          font-size: 1.5rem;
        }
        
        .luxury-gold-card {
          background: rgba(255, 255, 255, 0.1);
          backdrop-filter: blur(20px);
          border: 1px solid rgba(255, 215, 0, 0.2);
          border-radius: 20px;
          padding: 2rem;
          margin: 1.5rem;
          box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
          position: relative;
          overflow: hidden;
        }
        
        .luxury-gold-card::before {
          content: '';
          position: absolute;
          top: 0;
          left: 0;
          right: 0;
          height: 3px;
          background: linear-gradient(90deg, #FFD700, #FFE55C, #FFD700);
          animation: shimmer 2s infinite;
        }
        
        .luxury-gold-icon {
          width: 80px;
          height: 80px;
          background: linear-gradient(135deg, #FFD700, #FFE55C);
          border-radius: 50%;
          display: flex;
          align-items: center;
          justify-content: center;
          margin: 0 auto 1.5rem;
          box-shadow: 0 10px 30px rgba(255, 215, 0, 0.4);
          animation: pulse 2s infinite;
        }
        
        .luxury-gold-icon img {
          width: 45px;
          height: 45px;
          filter: brightness(0) saturate(100%) invert(15%) sepia(100%) saturate(1000%) hue-rotate(120deg) brightness(0.3);
        }
        
        .luxury-gold-title {
          text-align: center;
          color: #FFD700;
          font-family: 'Playfair Display', serif;
          font-size: 1.75rem;
          font-weight: 600;
          margin-bottom: 0.5rem;
        }
        
        .luxury-gold-subtitle {
          text-align: center;
          color: rgba(255, 255, 255, 0.8);
          font-size: 1rem;
          margin-bottom: 2rem;
        }
        
        .luxury-form-group {
          margin-bottom: 1.5rem;
        }
        
        .luxury-form-label {
          color: #FFD700;
          font-weight: 600;
          font-size: 0.9rem;
          margin-bottom: 0.75rem;
          display: block;
        }
        
        .luxury-radio-group {
          display: flex;
          gap: 1rem;
          margin-bottom: 1rem;
        }
        
        .luxury-radio-btn {
          background: rgba(255, 255, 255, 0.1);
          border: 2px solid rgba(255, 215, 0, 0.3);
          color: #FFFFFF;
          padding: 0.75rem 1.5rem;
          border-radius: 12px;
          font-weight: 600;
          cursor: pointer;
          transition: all 0.3s ease;
          backdrop-filter: blur(10px);
        }
        
        .luxury-radio-btn:hover {
          background: rgba(255, 215, 0, 0.2);
          border-color: #FFD700;
          transform: translateY(-2px);
        }
        
        .luxury-radio-btn.active {
          background: linear-gradient(135deg, #FFD700, #FFE55C);
          color: #013220;
          border-color: #FFD700;
          box-shadow: 0 8px 25px rgba(255, 215, 0, 0.4);
        }
        
        .luxury-input {
          background: rgba(255, 255, 255, 0.1);
          border: 2px solid rgba(255, 215, 0, 0.3);
          color: #FFFFFF;
          padding: 1rem 1.5rem;
          border-radius: 12px;
          font-size: 1.1rem;
          font-weight: 600;
          width: 100%;
          backdrop-filter: blur(10px);
          transition: all 0.3s ease;
        }
        
        .luxury-input:focus {
          outline: none;
          border-color: #FFD700;
          background: rgba(255, 255, 255, 0.15);
          box-shadow: 0 0 0 4px rgba(255, 215, 0, 0.2);
        }
        
        .luxury-input::placeholder {
          color: rgba(255, 255, 255, 0.6);
        }
        
        .luxury-result {
          background: linear-gradient(135deg, rgba(255, 215, 0, 0.2), rgba(255, 215, 0, 0.1));
          border: 2px solid rgba(255, 215, 0, 0.3);
          border-radius: 15px;
          padding: 1.5rem;
          text-align: center;
          margin: 1.5rem 0;
          backdrop-filter: blur(10px);
        }
        
        .luxury-result-label {
          color: rgba(255, 255, 255, 0.8);
          font-size: 0.9rem;
          margin-bottom: 0.5rem;
        }
        
        .luxury-result-value {
          color: #FFD700;
          font-family: 'Playfair Display', serif;
          font-size: 2rem;
          font-weight: 700;
          text-shadow: 0 2px 10px rgba(255, 215, 0, 0.3);
        }
        
        .luxury-error {
          background: rgba(239, 68, 68, 0.2);
          border: 1px solid rgba(239, 68, 68, 0.3);
          color: #FCA5A5;
          padding: 1rem;
          border-radius: 12px;
          margin: 1rem 0;
          backdrop-filter: blur(10px);
        }
        
        .luxury-buy-btn {
          background: linear-gradient(135deg, #FFD700, #FFE55C);
          color: #013220;
          border: none;
          padding: 1.25rem 2rem;
          border-radius: 15px;
          font-size: 1.1rem;
          font-weight: 700;
          font-family: 'Playfair Display', serif;
          cursor: pointer;
          transition: all 0.3s ease;
          box-shadow: 0 10px 30px rgba(255, 215, 0, 0.4);
          width: 100%;
          text-transform: uppercase;
          letter-spacing: 1px;
        }
        
        .luxury-buy-btn:hover {
          transform: translateY(-3px);
          box-shadow: 0 15px 40px rgba(255, 215, 0, 0.6);
          background: linear-gradient(135deg, #FFE55C, #FFD700);
        }
        
        .luxury-buy-btn:active {
          transform: translateY(-1px);
        }
        
        .luxury-divider {
          height: 1px;
          background: linear-gradient(90deg, transparent, rgba(255, 215, 0, 0.3), transparent);
          margin: 2rem 0;
        }
        
        @keyframes shimmer {
          0% { transform: translateX(-100%); }
          100% { transform: translateX(100%); }
        }
        
        @keyframes pulse {
          0%, 100% { transform: scale(1); }
          50% { transform: scale(1.05); }
        }
        
        .luxury-price-display {
          background: linear-gradient(135deg, rgba(255, 215, 0, 0.2), rgba(255, 215, 0, 0.1));
          border: 2px solid rgba(255, 215, 0, 0.3);
          border-radius: 15px;
          padding: 1.5rem;
          text-align: center;
          margin: 1.5rem 0;
          backdrop-filter: blur(10px);
          position: relative;
          overflow: hidden;
        }
        
        .luxury-price-display::before {
          content: '';
          position: absolute;
          top: -50%;
          left: -50%;
          width: 200%;
          height: 200%;
          background: radial-gradient(circle, rgba(255, 215, 0, 0.1) 0%, transparent 70%);
          animation: shimmer 3s ease-in-out infinite;
        }
        
        .luxury-price-label {
          color: rgba(255, 255, 255, 0.8);
          font-size: 0.9rem;
          margin-bottom: 0.5rem;
        }
        
        .luxury-price-value {
          color: #FFD700;
          font-family: 'Playfair Display', serif;
          font-size: 2.5rem;
          font-weight: 700;
          text-shadow: 0 2px 10px rgba(255, 215, 0, 0.3);
        }
      </style>
   </head>
   <body class="luxury-gold-saving">
      <!-- Luxury Header -->
      <div class="luxury-header-gold">
         <div class="d-flex align-items-center justify-content-between">
            <div class="d-flex align-items-center">
               <a href="goldsaving_menu.php" class="luxury-back-btn-gold">
                  <i class="fa-solid fa-arrow-left"></i>
               </a>
               <h1 class="luxury-title-gold ms-3">Gold Saving</h1>
            </div>
            <div class="crown-logo">
               <i class="fa-solid fa-crown"></i>
            </div>
         </div>
      </div>
      
      <!-- Luxury Gold Card -->
      <div class="luxury-gold-card animate-fade-in-up">
         <div class="luxury-gold-icon">
            <img src="icon/buy1.png" alt="Gold Purchase">
         </div>
         
         <h2 class="luxury-gold-title">Premium Gold Purchase</h2>
         <p class="luxury-gold-subtitle">Purchase gold as low as RM 10.00</p>
         
         <form method="post" enctype="multipart/form-data">
            <!-- Buy Price Section -->
            <div class="luxury-form-group">
               <label class="luxury-form-label">
                  <i class="fa-solid fa-coins me-2"></i>Buy Price 916
               </label>
               <div class="luxury-radio-group">
                  <div class="luxury-radio-btn active">
                     RM <?php echo $harganew; ?>
                  </div>
               </div>
            </div>
            
            <!-- Purity Section -->
            <div class="luxury-form-group">
               <label class="luxury-form-label">
                  <i class="fa-solid fa-gem me-2"></i>Purity
               </label>
               <div class="luxury-radio-group">
                  <div class="luxury-radio-btn active">
                     916
                  </div>
               </div>
            </div>
            
            <!-- Amount Input -->
            <div class="luxury-form-group">
               <label class="luxury-form-label">
                  <i class="fa-solid fa-money-bill-wave me-2"></i>Amount RM
               </label>
               <input type="number" 
                      id="jumlah" 
                      name="jumlah" 
                      placeholder="0.00" 
                      class="luxury-input" 
                      oninput="goldconverter(this.value)" 
                      onchange="goldconverter(this.value)" 
                      required>
            </div>
            
            <!-- Error Message -->
            <?php 
            if(isset($message)) {
               echo '<div class="luxury-error">
                        <i class="fa-solid fa-exclamation-triangle me-2"></i>'.$message.'
                     </div>';
            }
            ?>
            
            <!-- Gold Purchase Result -->
            <div class="luxury-result">
               <div class="luxury-result-label">
                  <i class="fa-solid fa-weight-scale me-2"></i>Gold Purchase (gm)
               </div>
               <div class="luxury-result-value" id="saving_out">0.000</div>
            </div>
            
            <div class="luxury-divider"></div>
            
            <!-- Current Gold Price Display -->
            <div class="luxury-price-display">
               <div class="luxury-price-label">
                  <i class="fa-solid fa-chart-line me-2"></i>Current Gold Price
               </div>
               <div class="luxury-price-value">RM <?php echo $harganew; ?></div>
            </div>
         </form>
      </div>
      
      <!-- Fixed Bottom Buy Button -->
      <div class="fixed-bottom p-3" style="background: rgba(1, 50, 32, 0.95); backdrop-filter: blur(20px); border-top: 1px solid rgba(255, 215, 0, 0.2);">
         <button class="luxury-buy-btn" type="submit" name="save" form="purchase-form">
            <i class="fa-solid fa-crown me-2"></i>Buy Gold Now
         </button>
      </div>
      
      <!-- Hidden Form for Submit -->
      <form id="purchase-form" method="post" enctype="multipart/form-data" style="display: none;">
         <input type="number" id="jumlah-hidden" name="jumlah" value="">
      </form>
      
      <!-- Bootstrap core JavaScript -->
      <script src="vender/jquery/jquery.min.js"></script>
      <script src="vender/bootstrap/js/bootstrap.bundle.min.js"></script>
      <!-- slick Slider JS-->
      <script src="vender/slick/slick/slick.min.js"></script>
      <!-- Sidebar JS-->
      <script src="vender/sidebar/hc-offcanvas-nav.js"></script>
      <!-- Javascript -->
      <script src="js/custom.js"></script>
      
      <script>
         function goldconverter(valNum) {
            const result = (valNum / <?php echo $harganew; ?>).toFixed(3);
            document.getElementById("saving_out").innerHTML = result;
            document.getElementById("jumlah-hidden").value = valNum;
         }
         
         // Add luxury animations
         document.addEventListener('DOMContentLoaded', function() {
            // Animate cards on load
            const cards = document.querySelectorAll('.luxury-gold-card');
            cards.forEach((card, index) => {
               card.style.animationDelay = `${index * 0.1}s`;
            });
            
            // Add hover effects to radio buttons
            const radioBtns = document.querySelectorAll('.luxury-radio-btn');
            radioBtns.forEach(btn => {
               btn.addEventListener('click', function() {
                  // Remove active class from all buttons in the same group
                  const parent = this.parentElement;
                  parent.querySelectorAll('.luxury-radio-btn').forEach(b => b.classList.remove('active'));
                  // Add active class to clicked button
                  this.classList.add('active');
               });
            });
            
            // Enhanced input focus effects
            const inputs = document.querySelectorAll('.luxury-input');
            inputs.forEach(input => {
               input.addEventListener('focus', function() {
                  this.parentElement.style.transform = 'scale(1.02)';
               });
               
               input.addEventListener('blur', function() {
                  this.parentElement.style.transform = 'scale(1)';
               });
            });
         });
      </script>
   </body>
</html>