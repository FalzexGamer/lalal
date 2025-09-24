<!doctype html>
<?php date_default_timezone_set("Asia/Kuala_Lumpur"); ?>
	<?php 

include('inc/dt.php'); 
include('inc/sesi.php'); 
	extract($_REQUEST);
	
?>
<html lang="en">
   
<head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="img/logo.png" type="image/png">
      <title>Lalal Gold - Secure Pin Code Registration</title>
      
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
        /* Additional Luxury Styles for Pin Code Registration Page */
        .luxury-pin-registration {
          background: linear-gradient(135deg, #013220 0%, #024a2f 100%);
          min-height: 100vh;
          color: #FFFFFF;
        }
        
        .luxury-header-pin {
          background: rgba(255, 255, 255, 0.1);
          backdrop-filter: blur(20px);
          border-bottom: 1px solid rgba(255, 215, 0, 0.2);
          padding: 1rem 1.5rem;
        }
        
        .luxury-back-btn-pin {
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
        
        .luxury-back-btn-pin:hover {
          background: rgba(255, 215, 0, 0.3);
          transform: translateX(-3px);
          color: #FFD700;
          box-shadow: 0 8px 25px rgba(255, 215, 0, 0.3);
        }
        
        .luxury-title-pin {
          color: #FFD700;
          font-family: 'Playfair Display', serif;
          font-weight: 600;
          margin: 0;
          font-size: 1.5rem;
        }
        
        .luxury-pin-card {
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
        
        .luxury-pin-card::before {
          content: '';
          position: absolute;
          top: 0;
          left: 0;
          right: 0;
          height: 3px;
          background: linear-gradient(90deg, #FFD700, #FFE55C, #FFD700);
          animation: shimmer 2s infinite;
        }
        
        .luxury-pin-icon {
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
        
        .luxury-pin-icon i {
          color: #013220;
          font-size: 2rem;
        }
        
        .luxury-pin-title {
          text-align: center;
          color: #FFD700;
          font-family: 'Playfair Display', serif;
          font-size: 1.75rem;
          font-weight: 600;
          margin-bottom: 0.5rem;
        }
        
        .luxury-pin-subtitle {
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
        
        .luxury-pin-input {
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
          text-align: center;
          letter-spacing: 0.5rem;
          font-family: 'Courier New', monospace;
        }
        
        .luxury-pin-input:focus {
          outline: none;
          border-color: #FFD700;
          background: rgba(255, 255, 255, 0.15);
          box-shadow: 0 0 0 4px rgba(255, 215, 0, 0.2);
          transform: scale(1.02);
        }
        
        .luxury-pin-input::placeholder {
          color: rgba(255, 255, 255, 0.6);
          letter-spacing: 0.2rem;
        }
        
        .luxury-pin-input.valid {
          border-color: #10B981;
          box-shadow: 0 0 0 4px rgba(16, 185, 129, 0.2);
        }
        
        .luxury-pin-input.invalid {
          border-color: #EF4444;
          box-shadow: 0 0 0 4px rgba(239, 68, 68, 0.2);
        }
        
        .luxury-pin-strength {
          display: flex;
          gap: 0.5rem;
          margin-top: 0.75rem;
          justify-content: center;
        }
        
        .strength-dot {
          width: 12px;
          height: 12px;
          border-radius: 50%;
          background: rgba(255, 255, 255, 0.2);
          transition: all 0.3s ease;
        }
        
        .strength-dot.active {
          background: #FFD700;
          box-shadow: 0 0 10px rgba(255, 215, 0, 0.5);
        }
        
        .strength-dot.strong {
          background: #10B981;
          box-shadow: 0 0 10px rgba(16, 185, 129, 0.5);
        }
        
        .luxury-pin-info {
          background: linear-gradient(135deg, rgba(255, 215, 0, 0.1), rgba(255, 215, 0, 0.05));
          border: 1px solid rgba(255, 215, 0, 0.2);
          border-radius: 12px;
          padding: 1rem;
          margin: 1.5rem 0;
          backdrop-filter: blur(10px);
        }
        
        .luxury-pin-info h4 {
          color: #FFD700;
          font-size: 1rem;
          margin-bottom: 0.5rem;
          display: flex;
          align-items: center;
          gap: 0.5rem;
        }
        
        .luxury-pin-info ul {
          color: rgba(255, 255, 255, 0.8);
          font-size: 0.875rem;
          margin: 0;
          padding-left: 1.5rem;
        }
        
        .luxury-pin-info li {
          margin-bottom: 0.25rem;
        }
        
        .luxury-success {
          background: rgba(16, 185, 129, 0.2);
          border: 1px solid rgba(16, 185, 129, 0.3);
          color: #A7F3D0;
          padding: 1rem;
          border-radius: 12px;
          margin: 1rem 0;
          backdrop-filter: blur(10px);
          display: flex;
          align-items: center;
          gap: 0.75rem;
        }
        
        .luxury-warning {
          background: rgba(245, 158, 11, 0.2);
          border: 1px solid rgba(245, 158, 11, 0.3);
          color: #FED7AA;
          padding: 1rem;
          border-radius: 12px;
          margin: 1rem 0;
          backdrop-filter: blur(10px);
          display: flex;
          align-items: center;
          gap: 0.75rem;
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
        
        .luxury-save-btn:disabled {
          background: rgba(255, 255, 255, 0.2);
          color: rgba(255, 255, 255, 0.5);
          cursor: not-allowed;
          transform: none;
          box-shadow: none;
        }
        
        .luxury-divider {
          height: 1px;
          background: linear-gradient(90deg, transparent, rgba(255, 215, 0, 0.3), transparent);
          margin: 2rem 0;
        }
        
        .luxury-security-badge {
          display: flex;
          align-items: center;
          justify-content: center;
          gap: 0.5rem;
          background: rgba(255, 215, 0, 0.1);
          border: 1px solid rgba(255, 215, 0, 0.2);
          border-radius: 20px;
          padding: 0.5rem 1rem;
          margin: 1rem auto;
          width: fit-content;
          backdrop-filter: blur(10px);
        }
        
        .luxury-security-badge i {
          color: #FFD700;
          font-size: 1rem;
        }
        
        .luxury-security-badge span {
          color: rgba(255, 255, 255, 0.9);
          font-size: 0.875rem;
          font-weight: 600;
        }
        
        @keyframes shimmer {
          0% { transform: translateX(-100%); }
          100% { transform: translateX(100%); }
        }
        
        @keyframes pulse {
          0%, 100% { transform: scale(1); }
          50% { transform: scale(1.05); }
        }
        
        @keyframes shake {
          0%, 100% { transform: translateX(0); }
          25% { transform: translateX(-5px); }
          75% { transform: translateX(5px); }
        }
        
        .shake {
          animation: shake 0.5s ease-in-out;
        }
      </style>
   </head>
   <body class="luxury-pin-registration">
      <!-- Luxury Header -->
      <div class="luxury-header-pin">
         <div class="d-flex align-items-center justify-content-between">
            <div class="d-flex align-items-center">
               <a href="index.php" class="luxury-back-btn-pin">
                  <i class="fa-solid fa-arrow-left"></i>
               </a>
               <h1 class="luxury-title-pin ms-3">Secure Pin Code</h1>
            </div>
            <div class="crown-logo">
               <i class="fa-solid fa-crown"></i>
            </div>
         </div>
      </div>
      
      <!-- Luxury Pin Card -->
      <div class="luxury-pin-card animate-fade-in-up">
         <div class="luxury-pin-icon">
            <i class="fa-solid fa-lock"></i>
         </div>
         
         <h2 class="luxury-pin-title">Secure Pin Code Registration</h2>
         <p class="luxury-pin-subtitle">Create a secure 6-digit PIN for your account</p>
         
         <!-- Security Badge -->
         <div class="luxury-security-badge">
            <i class="fa-solid fa-shield-halved"></i>
            <span>Bank-Level Security</span>
         </div>
         
         <form method="post" enctype="multipart/form-data" id="pin-form">
            <!-- Pin Code Input -->
            <div class="luxury-form-group">
               <label class="luxury-form-label">
                  <i class="fa-solid fa-key me-2"></i>Enter 6-Digit PIN Code
               </label>
               <input type="password" 
                      name="pincode" 
                      id="pincode" 
                      maxlength="6" 
                      class="luxury-pin-input" 
                      placeholder="••••••" 
                      pattern="\d{6}" 
                      title="Please enter a 6-digit number" 
                      required>
               
               <!-- Pin Strength Indicator -->
               <div class="luxury-pin-strength">
                  <div class="strength-dot" data-strength="1"></div>
                  <div class="strength-dot" data-strength="2"></div>
                  <div class="strength-dot" data-strength="3"></div>
                  <div class="strength-dot" data-strength="4"></div>
                  <div class="strength-dot" data-strength="5"></div>
                  <div class="strength-dot" data-strength="6"></div>
               </div>
            </div>
            
            <!-- Confirm Pin Code Input -->
            <div class="luxury-form-group">
               <label class="luxury-form-label">
                  <i class="fa-solid fa-check-double me-2"></i>Confirm PIN Code
               </label>
               <input type="password" 
                      name="confirmpincode" 
                      id="confirmpincode" 
                      maxlength="6" 
                      class="luxury-pin-input" 
                      placeholder="••••••" 
                      pattern="\d{6}" 
                      title="Please enter a 6-digit number" 
                      required>
            </div>
            
            <!-- Pin Code Guidelines -->
            <div class="luxury-pin-info">
               <h4>
                  <i class="fa-solid fa-info-circle"></i>
                  PIN Code Guidelines
               </h4>
               <ul>
                  <li>Must be exactly 6 digits</li>
                  <li>Use numbers only (0-9)</li>
                  <li>Keep your PIN secure and private</li>
                  <li>Don't share your PIN with anyone</li>
               </ul>
            </div>
            
            <!-- Success/Error Messages -->
            <?php 
            if(isset($message)) {
               if(strpos($message, 'successfully') !== false) {
                  echo '<div class="luxury-success">
                           <i class="fa-solid fa-check-circle"></i>
                           <span>'.$message.'</span>
                        </div>';
               } else {
                  echo '<div class="luxury-warning">
                           <i class="fa-solid fa-exclamation-triangle"></i>
                           <span>'.$message.'</span>
                        </div>';
               }
            }
            ?>
            
            <div class="luxury-divider"></div>
            
            <!-- Security Features -->
            <div class="luxury-pin-info">
               <h4>
                  <i class="fa-solid fa-shield-halved"></i>
                  Security Features
               </h4>
               <ul>
                  <li>Encrypted PIN storage</li>
                  <li>Secure transmission</li>
                  <li>Account protection</li>
                  <li>24/7 monitoring</li>
               </ul>
            </div>
         </form>
      </div>
      
      <!-- Fixed Bottom Save Button -->
      <div class="fixed-bottom p-3" style="background: rgba(1, 50, 32, 0.95); backdrop-filter: blur(20px); border-top: 1px solid rgba(255, 215, 0, 0.2);">
         <button class="luxury-save-btn" type="submit" name="save" form="pin-form" id="save-btn" disabled>
            <i class="fa-solid fa-shield-halved me-2"></i>Secure My Account
         </button>
      </div>
      
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
         // Pin Code Validation and Enhancement
         document.addEventListener('DOMContentLoaded', function() {
            const pincodeInput = document.getElementById('pincode');
            const confirmPincodeInput = document.getElementById('confirmpincode');
            const saveBtn = document.getElementById('save-btn');
            const strengthDots = document.querySelectorAll('.strength-dot');
            
            // Pin strength indicator
            function updatePinStrength(pin) {
               const length = pin.length;
               strengthDots.forEach((dot, index) => {
                  if (index < length) {
                     dot.classList.add('active');
                     if (length === 6) {
                        dot.classList.add('strong');
                     }
                  } else {
                     dot.classList.remove('active', 'strong');
                  }
               });
            }
            
            // Validate PIN format
            function validatePin(pin) {
               return /^\d{6}$/.test(pin);
            }
            
            // Check if PINs match
            function checkPinMatch() {
               const pin1 = pincodeInput.value;
               const pin2 = confirmPincodeInput.value;
               
               if (pin1 && pin2) {
                  if (pin1 === pin2 && validatePin(pin1)) {
                     pincodeInput.classList.remove('invalid');
                     confirmPincodeInput.classList.remove('invalid');
                     pincodeInput.classList.add('valid');
                     confirmPincodeInput.classList.add('valid');
                     saveBtn.disabled = false;
                     return true;
                  } else {
                     pincodeInput.classList.remove('valid');
                     confirmPincodeInput.classList.remove('valid');
                     if (pin1 !== pin2) {
                        pincodeInput.classList.add('invalid');
                        confirmPincodeInput.classList.add('invalid');
                        confirmPincodeInput.classList.add('shake');
                        setTimeout(() => {
                           confirmPincodeInput.classList.remove('shake');
                        }, 500);
                     }
                     saveBtn.disabled = true;
                     return false;
                  }
               } else {
                  saveBtn.disabled = true;
                  return false;
               }
            }
            
            // Event listeners
            pincodeInput.addEventListener('input', function() {
               const value = this.value.replace(/\D/g, '').slice(0, 6);
               this.value = value;
               updatePinStrength(value);
               checkPinMatch();
            });
            
            confirmPincodeInput.addEventListener('input', function() {
               const value = this.value.replace(/\D/g, '').slice(0, 6);
               this.value = value;
               checkPinMatch();
            });
            
            // Focus effects
            [pincodeInput, confirmPincodeInput].forEach(input => {
               input.addEventListener('focus', function() {
                  this.parentElement.style.transform = 'scale(1.02)';
               });
               
               input.addEventListener('blur', function() {
                  this.parentElement.style.transform = 'scale(1)';
               });
            });
            
            // Form submission enhancement
            document.getElementById('pin-form').addEventListener('submit', function(e) {
               if (!checkPinMatch()) {
                  e.preventDefault();
                  alert('Please ensure both PIN codes match and are exactly 6 digits.');
                  return false;
               }
               
               // Add loading state
               saveBtn.innerHTML = '<i class="fa-solid fa-spinner fa-spin me-2"></i>Securing Account...';
               saveBtn.disabled = true;
            });
            
            // Auto-focus first input
            pincodeInput.focus();
         });
      </script>
   </body>
</html>