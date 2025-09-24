<!doctype html>
 <?php date_default_timezone_set("Asia/Kuala_Lumpur"); ?>
<?php 
extract($_REQUEST);
include('inc/dt.php'); 
include('inc/sesi.php'); 

?>
<html lang="en">
   
<head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="img/logo.png" type="image/png">
      <title>Lalal Gold - Register Address</title>
      
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
        /* Additional Luxury Styles for Register Address Page */
        .luxury-address-register {
          background: linear-gradient(135deg, #013220 0%, #024a2f 100%);
          min-height: 100vh;
          color: #FFFFFF;
        }
        
        .luxury-header-address {
          background: rgba(255, 255, 255, 0.1);
          backdrop-filter: blur(20px);
          border-bottom: 1px solid rgba(255, 215, 0, 0.2);
          padding: 1rem 1.5rem;
        }
        
        .luxury-back-btn-address {
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
        
        .luxury-back-btn-address:hover {
          background: rgba(255, 215, 0, 0.3);
          transform: translateX(-3px);
          color: #FFD700;
          box-shadow: 0 8px 25px rgba(255, 215, 0, 0.3);
        }
        
        .luxury-title-address {
          color: #FFD700;
          font-family: 'Playfair Display', serif;
          font-weight: 600;
          margin: 0;
          font-size: 1.5rem;
        }
        
        .luxury-address-card {
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
        
        .luxury-address-card::before {
          content: '';
          position: absolute;
          top: 0;
          left: 0;
          right: 0;
          height: 3px;
          background: linear-gradient(90deg, #FFD700, #FFE55C, #FFD700);
          animation: shimmer 2s infinite;
        }
        
        .luxury-address-icon {
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
        
        .luxury-address-icon i {
          color: #013220;
          font-size: 2rem;
        }
        
        .luxury-address-title {
          text-align: center;
          color: #FFD700;
          font-family: 'Playfair Display', serif;
          font-size: 1.75rem;
          font-weight: 600;
          margin-bottom: 0.5rem;
        }
        
        .luxury-address-subtitle {
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
        
        .luxury-input {
          background: rgba(255, 255, 255, 0.1);
          border: 2px solid rgba(255, 215, 0, 0.3);
          color: #FFFFFF;
          padding: 1rem 1.5rem;
          border-radius: 12px;
          font-size: 1rem;
          font-weight: 500;
          width: 100%;
          backdrop-filter: blur(10px);
          transition: all 0.3s ease;
        }
        
        .luxury-input:focus {
          outline: none;
          border-color: #FFD700;
          background: rgba(255, 255, 255, 0.15);
          box-shadow: 0 0 0 4px rgba(255, 215, 0, 0.2);
          transform: translateY(-2px);
        }
        
        .luxury-input::placeholder {
          color: rgba(255, 255, 255, 0.6);
        }
        
        .luxury-select {
          background: rgba(255, 255, 255, 0.1);
          border: 2px solid rgba(255, 215, 0, 0.3);
          color: #FFFFFF;
          padding: 1rem 1.5rem;
          border-radius: 12px;
          font-size: 1rem;
          font-weight: 500;
          width: 100%;
          backdrop-filter: blur(10px);
          transition: all 0.3s ease;
          cursor: pointer;
        }
        
        .luxury-select:focus {
          outline: none;
          border-color: #FFD700;
          background: rgba(255, 255, 255, 0.15);
          box-shadow: 0 0 0 4px rgba(255, 215, 0, 0.2);
          transform: translateY(-2px);
        }
        
        .luxury-select option {
          background: #013220;
          color: #FFFFFF;
        }
        
        .luxury-info-section {
          background: linear-gradient(135deg, rgba(255, 215, 0, 0.1), rgba(255, 215, 0, 0.05));
          border: 1px solid rgba(255, 215, 0, 0.2);
          border-radius: 15px;
          padding: 1.5rem;
          margin: 1.5rem 0;
          backdrop-filter: blur(10px);
        }
        
        .luxury-info-title {
          color: #FFD700;
          font-weight: 600;
          font-size: 1rem;
          margin-bottom: 0.75rem;
          display: flex;
          align-items: center;
          gap: 0.5rem;
        }
        
        .luxury-info-text {
          color: rgba(255, 255, 255, 0.8);
          font-size: 0.875rem;
          line-height: 1.6;
        }
        
        .luxury-save-btn {
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
        
        .luxury-save-btn:hover {
          transform: translateY(-3px);
          box-shadow: 0 15px 40px rgba(255, 215, 0, 0.6);
          background: linear-gradient(135deg, #FFE55C, #FFD700);
        }
        
        .luxury-save-btn:active {
          transform: translateY(-1px);
        }
        
        .luxury-message {
          background: rgba(255, 255, 255, 0.1);
          border: 1px solid rgba(255, 215, 0, 0.3);
          color: #FFD700;
          padding: 1rem 1.5rem;
          border-radius: 12px;
          margin: 1rem 0;
          backdrop-filter: blur(10px);
          text-align: center;
          font-weight: 500;
        }
        
        .luxury-message.error {
          background: rgba(239, 68, 68, 0.2);
          border-color: rgba(239, 68, 68, 0.3);
          color: #FCA5A5;
        }
        
        .luxury-message.success {
          background: rgba(16, 185, 129, 0.2);
          border-color: rgba(16, 185, 129, 0.3);
          color: #6EE7B7;
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
        
        @keyframes fadeInUp {
          from {
            opacity: 0;
            transform: translateY(30px);
          }
          to {
            opacity: 1;
            transform: translateY(0);
          }
        }
        
        .animate-fade-in-up {
          animation: fadeInUp 0.6s ease-out;
        }
        
        /* Responsive Design */
        @media (max-width: 768px) {
          .luxury-address-card {
            padding: 1.5rem;
            margin: 1rem;
          }
          
          .luxury-address-title {
            font-size: 1.5rem;
          }
          
          .luxury-address-icon {
            width: 60px;
            height: 60px;
          }
          
          .luxury-address-icon i {
            font-size: 1.5rem;
          }
        }
        
        @media (max-width: 480px) {
          .luxury-address-card {
            padding: 1rem;
          }
          
          .luxury-address-title {
            font-size: 1.25rem;
          }
          
          .luxury-input,
          .luxury-select {
            padding: 0.875rem 1rem;
            font-size: 0.9rem;
          }
        }
      </style>
   </head>
   <body class="luxury-address-register">
      <!-- Luxury Header -->
      <div class="luxury-header-address">
         <div class="d-flex align-items-center justify-content-between">
            <div class="d-flex align-items-center">
               <a href="cart.php" class="luxury-back-btn-address">
                  <i class="fa-solid fa-arrow-left"></i>
               </a>
               <h1 class="luxury-title-address ms-3">Register Address</h1>
            </div>
            <div class="crown-logo">
               <i class="fa-solid fa-crown"></i>
            </div>
         </div>
      </div>
      
      <!-- Luxury Address Card -->
      <div class="luxury-address-card animate-fade-in-up">
         <!-- Address Icon -->
         <div class="luxury-address-icon">
            <i class="fa-solid fa-map-marker-alt"></i>
         </div>
         
         <h2 class="luxury-address-title">Delivery Address</h2>
         <p class="luxury-address-subtitle">Enter your complete delivery information</p>
         
         <?php 
         $query1z=mysqli_query($conn,"SELECT count(recno) as bilalamat,nama,alamat_jalan,poskod,bandar,negeri,nofon from alamat_customer where username='$username'");
         $res1z=mysqli_fetch_array($query1z);

         $bilalamat=$res1z['bilalamat'];
         
         if($bilalamat<>"0"){
             $nama_alamat1 = $res1z['nama'];
              $alamat_jalan1 = $res1z['alamat_jalan'];
              $poskod1 = $res1z['poskod'];
                $bandar1 = $res1z['bandar'];
              $negeri1 = $res1z['negeri'];
              $nofon1 = $res1z['nofon'];
         }
         
         if($bilalamat=="0"){
             $nama_alamat1 = "";
              $alamat_jalan1  = "";
              $poskod1  = "";
                $bandar1  = "";
              $negeri1  = "";
              $nofon1  = "";
         }
         ?>
         
         <?php 
         if(isset($save)) {
             $nama_alamat = mysqli_real_escape_string($conn, $_POST["nama_alamat"]);		  
             $alamat = mysqli_real_escape_string($conn, $_POST["alamat"]);		
             $poskod = mysqli_real_escape_string($conn, $_POST["poskod"]);		
             $bandar = mysqli_real_escape_string($conn, $_POST["bandar"]);		 
             $negeri = mysqli_real_escape_string($conn, $_POST["negeri"]);
             $nofon = mysqli_real_escape_string($conn, $_POST["nofon"]);
             
             if ($conn->connect_error) {
               die("Connection failed: " . $conn->connect_error);
             }

             $sql = "INSERT INTO alamat_customer (username, nama, alamat_jalan, poskod,bandar,negeri,nofon,setdefault)
             VALUES ('$username', '$nama', '$nama_alamat','$poskod','$bandar','$negeri','$nofon','DEFAULT')";

             if ($conn->query($sql) === TRUE) {
               echo"<script>window.location.href='cart.php';</script>";
             } else {
               $message = "Failed to register";
             }
         }
         ?>
         
         <!-- Success/Error Messages -->
         <?php 
         if(isset($message)) {
            echo '<div class="luxury-message error">
                     <i class="fa-solid fa-exclamation-triangle me-2"></i>'.$message.'
                  </div>';
         }
         ?>
         
         <!-- Address Form -->
         <form method="post" enctype="multipart/form-data">
            <!-- Name -->
            <div class="luxury-form-group">
               <label class="luxury-form-label">
                  <i class="fa-solid fa-user me-2"></i>Full Name
               </label>
               <input type="text" 
                      name="nama_alamat" 
                      id="nama_alamat" 
                      value="<?php echo $nama_alamat1; ?>" 
                      class="luxury-input" 
                      placeholder="Enter your full name" 
                      required>
            </div>
            
            <!-- Street Address -->
            <div class="luxury-form-group">
               <label class="luxury-form-label">
                  <i class="fa-solid fa-road me-2"></i>Street Address *
               </label>
               <input type="text" 
                      name="alamat" 
                      id="alamat" 
                      value="<?php echo $alamat_jalan1; ?>" 
                      class="luxury-input" 
                      placeholder="Enter your street address" 
                      required>
            </div>
            
            <!-- Post Code -->
            <div class="luxury-form-group">
               <label class="luxury-form-label">
                  <i class="fa-solid fa-mailbox me-2"></i>Post Code *
               </label>
               <input type="text" 
                      name="poskod" 
                      id="poskod" 
                      value="<?php echo $poskod1; ?>"  
                      class="luxury-input" 
                      placeholder="Enter post code" 
                      required>
            </div>
            
            <!-- City -->
            <div class="luxury-form-group">
               <label class="luxury-form-label">
                  <i class="fa-solid fa-city me-2"></i>City
               </label>
               <input type="text" 
                      name="bandar" 
                      id="bandar" 
                      value="<?php echo $bandar1; ?>" 
                      class="luxury-input" 
                      placeholder="Enter city name" 
                      required>
            </div>
            
            <!-- State -->
            <div class="luxury-form-group">
               <label class="luxury-form-label">
                  <i class="fa-solid fa-map me-2"></i>State *
               </label>
               <select name="negeri" id="negeri" class="luxury-select" required>
                  <option value="" disabled selected>Select State</option>
                  <option value="Johor" <?php echo ($negeri1 == 'Johor') ? 'selected' : ''; ?>>Johor</option>
                  <option value="Kedah" <?php echo ($negeri1 == 'Kedah') ? 'selected' : ''; ?>>Kedah</option>
                  <option value="Kelantan" <?php echo ($negeri1 == 'Kelantan') ? 'selected' : ''; ?>>Kelantan</option>
                  <option value="Melaka" <?php echo ($negeri1 == 'Melaka') ? 'selected' : ''; ?>>Melaka</option>
                  <option value="Negeri Sembilan" <?php echo ($negeri1 == 'Negeri Sembilan') ? 'selected' : ''; ?>>Negeri Sembilan</option>
                  <option value="Pahang" <?php echo ($negeri1 == 'Pahang') ? 'selected' : ''; ?>>Pahang</option>
                  <option value="Perak" <?php echo ($negeri1 == 'Perak') ? 'selected' : ''; ?>>Perak</option>
                  <option value="Perlis" <?php echo ($negeri1 == 'Perlis') ? 'selected' : ''; ?>>Perlis</option>
                  <option value="Pulau Pinang" <?php echo ($negeri1 == 'Pulau Pinang') ? 'selected' : ''; ?>>Pulau Pinang</option>
                  <option value="Sabah" <?php echo ($negeri1 == 'Sabah') ? 'selected' : ''; ?>>Sabah</option>
                  <option value="Sarawak" <?php echo ($negeri1 == 'Sarawak') ? 'selected' : ''; ?>>Sarawak</option>
                  <option value="Selangor" <?php echo ($negeri1 == 'Selangor') ? 'selected' : ''; ?>>Selangor</option>
                  <option value="Terengganu" <?php echo ($negeri1 == 'Terengganu') ? 'selected' : ''; ?>>Terengganu</option>
                  <option value="Kuala Lumpur" <?php echo ($negeri1 == 'Kuala Lumpur') ? 'selected' : ''; ?>>Kuala Lumpur</option>
                  <option value="Labuan" <?php echo ($negeri1 == 'Labuan') ? 'selected' : ''; ?>>Labuan</option>
                  <option value="Putrajaya" <?php echo ($negeri1 == 'Putrajaya') ? 'selected' : ''; ?>>Putrajaya</option>
               </select>
            </div>
            
            <!-- Phone -->
            <div class="luxury-form-group">
               <label class="luxury-form-label">
                  <i class="fa-solid fa-phone me-2"></i>Phone Number
               </label>
               <input type="text" 
                      name="nofon" 
                      id="nofon" 
                      value="<?php echo $nofon1; ?>" 
                      class="luxury-input" 
                      placeholder="Enter phone number" 
                      required>
            </div>
            
            <!-- Email -->
            <div class="luxury-form-group">
               <label class="luxury-form-label">
                  <i class="fa-solid fa-envelope me-2"></i>Email Address
               </label>
               <input type="email" 
                      name="email_data" 
                      id="email_data" 
                      value="<?php echo $email; ?>" 
                      class="luxury-input" 
                      placeholder="Enter email address" 
                      required>
            </div>
            
            <div class="luxury-divider"></div>
            
            <!-- Information Section -->
            <div class="luxury-info-section">
               <div class="luxury-info-title">
                  <i class="fa-solid fa-info-circle"></i>
                  Important Information
               </div>
               <div class="luxury-info-text">
                  Please make sure the phone number and email are registered correctly. 
                  For every purchase through mobile apps you will receive a payment 
                  confirmation receipt via your email.
               </div>
            </div>
         </form>
      </div>
      
      <!-- Fixed Bottom Save Button -->
      <div class="fixed-bottom p-3" style="background: rgba(1, 50, 32, 0.95); backdrop-filter: blur(20px); border-top: 1px solid rgba(255, 215, 0, 0.2);">
         <button class="luxury-save-btn" type="submit" name="save" form="address-form">
            <i class="fa-solid fa-save me-2"></i>Save Address
         </button>
      </div>
      
      <!-- Hidden Form for Submit -->
      <form id="address-form" method="post" enctype="multipart/form-data" style="display: none;">
         <input type="text" name="nama_alamat" value="">
         <input type="text" name="alamat" value="">
         <input type="text" name="poskod" value="">
         <input type="text" name="bandar" value="">
         <select name="negeri"></select>
         <input type="text" name="nofon" value="">
         <input type="email" name="email_data" value="">
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
         // Add luxury animations and form handling
         document.addEventListener('DOMContentLoaded', function() {
            // Animate card on load
            const card = document.querySelector('.luxury-address-card');
            card.style.opacity = '0';
            card.style.transform = 'translateY(30px)';
            
            setTimeout(() => {
               card.style.transition = 'all 0.6s ease-out';
               card.style.opacity = '1';
               card.style.transform = 'translateY(0)';
            }, 100);
            
            // Enhanced input focus effects
            const inputs = document.querySelectorAll('.luxury-input, .luxury-select');
            inputs.forEach(input => {
               input.addEventListener('focus', function() {
                  this.parentElement.style.transform = 'scale(1.02)';
               });
               
               input.addEventListener('blur', function() {
                  this.parentElement.style.transform = 'scale(1)';
               });
            });
            
            // Form validation and data transfer
            const mainForm = document.querySelector('form');
            const hiddenForm = document.getElementById('address-form');
            const saveBtn = document.querySelector('.luxury-save-btn');
            
            saveBtn.addEventListener('click', function(e) {
               e.preventDefault();
               
               // Transfer form data to hidden form
               const formData = new FormData(mainForm);
               const hiddenInputs = hiddenForm.querySelectorAll('input, select');
               
               hiddenInputs.forEach(input => {
                  const value = formData.get(input.name);
                  if (value) {
                     input.value = value;
                  }
               });
               
               // Submit hidden form
               hiddenForm.submit();
            });
            
            // Add typing animation to icon
            const icon = document.querySelector('.luxury-address-icon');
            icon.addEventListener('mouseenter', function() {
               this.style.transform = 'scale(1.1) rotate(5deg)';
            });
            
            icon.addEventListener('mouseleave', function() {
               this.style.transform = 'scale(1) rotate(0deg)';
            });
            
            // Real-time form validation
            const requiredInputs = document.querySelectorAll('input[required], select[required]');
            requiredInputs.forEach(input => {
               input.addEventListener('input', function() {
                  if (this.value.trim() === '') {
                     this.style.borderColor = '#EF4444';
                     this.style.boxShadow = '0 0 0 4px rgba(239, 68, 68, 0.2)';
                  } else {
                     this.style.borderColor = 'rgba(255, 215, 0, 0.3)';
                     this.style.boxShadow = 'none';
                  }
               });
            });
         });
      </script>
   </body>
</html>