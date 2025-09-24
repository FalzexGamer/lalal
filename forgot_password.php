<!doctype html>
<head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="img/logo.png" type="image/png">
      <title>Lalal Gold - Forgot Password</title>
      
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
        /* Additional Luxury Styles for Forgot Password Page */
        .luxury-forgot-password {
          background: linear-gradient(135deg, #013220 0%, #024a2f 100%);
          min-height: 100vh;
          color: #FFFFFF;
          display: flex;
          align-items: center;
          justify-content: center;
          padding: 2rem 1rem;
        }
        
        .luxury-forgot-card {
          background: rgba(255, 255, 255, 0.1);
          backdrop-filter: blur(20px);
          border: 1px solid rgba(255, 215, 0, 0.2);
          border-radius: 25px;
          padding: 3rem 2rem;
          box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
          position: relative;
          overflow: hidden;
          max-width: 500px;
          width: 100%;
        }
        
        .luxury-forgot-card::before {
          content: '';
          position: absolute;
          top: 0;
          left: 0;
          right: 0;
          height: 4px;
          background: linear-gradient(90deg, #FFD700, #FFE55C, #FFD700);
          animation: shimmer 2s infinite;
        }
        
        .luxury-logo-section {
          text-align: center;
          margin-bottom: 2rem;
        }
        
        .luxury-logo {
          width: 120px;
          height: 120px;
          background: linear-gradient(135deg, #FFD700, #FFE55C);
          border-radius: 50%;
          display: flex;
          align-items: center;
          justify-content: center;
          margin: 0 auto 1.5rem;
          box-shadow: 0 15px 35px rgba(255, 215, 0, 0.4);
          animation: pulse 2s infinite;
        }
        
        .luxury-logo img {
          width: 70px;
          height: 70px;
          filter: brightness(0) saturate(100%) invert(15%) sepia(100%) saturate(1000%) hue-rotate(120deg) brightness(0.3);
        }
        
        .luxury-forgot-title {
          color: #FFD700;
          font-family: 'Playfair Display', serif;
          font-size: 2rem;
          font-weight: 600;
          text-align: center;
          margin-bottom: 0.5rem;
        }
        
        .luxury-forgot-subtitle {
          color: rgba(255, 255, 255, 0.8);
          text-align: center;
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
          border-radius: 15px;
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
        
        .luxury-reset-btn {
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
          margin-top: 1rem;
        }
        
        .luxury-reset-btn:hover {
          transform: translateY(-3px);
          box-shadow: 0 15px 40px rgba(255, 215, 0, 0.6);
          background: linear-gradient(135deg, #FFE55C, #FFD700);
        }
        
        .luxury-reset-btn:active {
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
        
        .luxury-footer {
          text-align: center;
          margin-top: 2rem;
        }
        
        .luxury-footer-text {
          color: rgba(255, 255, 255, 0.7);
          font-size: 0.875rem;
          margin-bottom: 1rem;
        }
        
        .luxury-footer-links {
          display: flex;
          justify-content: center;
          gap: 2rem;
          flex-wrap: wrap;
        }
        
        .luxury-footer-link {
          color: #FFD700;
          text-decoration: none;
          font-size: 0.875rem;
          font-weight: 500;
          transition: all 0.3s ease;
        }
        
        .luxury-footer-link:hover {
          color: #FFE55C;
          transform: translateY(-2px);
        }
        
        .luxury-back-link {
          position: absolute;
          top: 2rem;
          left: 2rem;
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
        
        .luxury-back-link:hover {
          background: rgba(255, 215, 0, 0.3);
          transform: translateX(-3px);
          color: #FFD700;
          box-shadow: 0 8px 25px rgba(255, 215, 0, 0.3);
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
          line-height: 1.5;
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
          .luxury-forgot-card {
            padding: 2rem 1.5rem;
            margin: 1rem;
          }
          
          .luxury-forgot-title {
            font-size: 1.75rem;
          }
          
          .luxury-logo {
            width: 100px;
            height: 100px;
          }
          
          .luxury-logo img {
            width: 60px;
            height: 60px;
          }
          
          .luxury-back-link {
            top: 1rem;
            left: 1rem;
          }
        }
        
        @media (max-width: 480px) {
          .luxury-forgot-card {
            padding: 1.5rem 1rem;
          }
          
          .luxury-forgot-title {
            font-size: 1.5rem;
          }
          
          .luxury-footer-links {
            flex-direction: column;
            gap: 1rem;
          }
        }
      </style>
   </head>
<?php date_default_timezone_set("Asia/Kuala_Lumpur"); ?>
<html lang="en">

<?php
session_start();
include('inc/dt.php');

extract($_REQUEST);

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require 'vendor/autoload.php';

//FORGOT PASSWORD CODE START
function send_password_reset($get_username, $get_email, $verify_token)
{
   $mail = new PHPMailer(true);
   // $mail->SMTPDebug = 2;
   $mail->isSMTP();
   $mail->SMTPAuth   = true;

   $mail->Host       = 'smtp.gmail.com';
   $mail->Username   = 'lalalgold916@gmail.com';
   $mail->Password   = 'luqd napp imhz zgbq';

   $mail->SMTPSecure = "ssl";
   $mail->Port       = 465;

   $mail->setFrom('Lalalgold@gmail.com', 'Lalalgold');
   $mail->addAddress($get_email);

   $mail->isHTML(true);
   $mail->Subject = 'Reset Password for Lalalgold Account';

   $email_template = "
    <h2>Password reset link</h2>
    <h5></h5>
    click <a href='http://localhost/apps/apps/reset_password.php?token=$verify_token&email=$get_email'>here</a>  to reset your password";

   $mail->Body = $email_template;

   $mail->send();
   // echo 'Message has been sent';
}

if (isset($_POST['password_reset_link'])) {
   $email = mysqli_real_escape_string($con, $_POST['email']);
   $verify_token = md5(rand());
   $check_email = "SELECT email FROM agen WHERE email='$email'LIMIT 1";
   $check_email_run = mysqli_query($con, $check_email);

   if (mysqli_num_rows($check_email_run) > 0) {
      $row = mysqli_fetch_array($check_email_run);
      $get_username = $row['username'];
      $get_email = $row['email'];
      $update_token = "UPDATE agen SET verify_token='$verify_token' WHERE email='$get_email'LIMIT 1";
      $update_token_run = mysqli_query($con, $update_token);
      if ($update_token_run) {
         send_password_reset($get_username, $get_email, $verify_token);
         $_SESSION['status'] = "We have emailed you the password reset link";
         header('location: forgot_password.php');
         exit(0);
      } else {
         $_SESSION['status'] = "Something went wrong.";
         header('location: forgot_password.php');
         exit(0);
      }
   } else {
      $_SESSION['status'] = "Your email has not been registered";
      header('location: forgot_password.php');
      exit(0);
   }
}
//FORGOT PASSWORD CODE END

?>

<body class="luxury-forgot-password">
   <!-- Back Link -->
   <a href="sign_in.php" class="luxury-back-link">
      <i class="fa-solid fa-arrow-left"></i>
   </a>
   
   <!-- Luxury Forgot Password Card -->
   <div class="luxury-forgot-card animate-fade-in-up">
      <!-- Logo Section -->
      <div class="luxury-logo-section">
         <div class="luxury-logo">
            <img src="icon/logo2.png" alt="Lalal Gold">
         </div>
         <h1 class="luxury-forgot-title">Forgot Password</h1>
         <p class="luxury-forgot-subtitle">Enter your email to reset your password</p>
      </div>
      
      <!-- Status Messages -->
      <?php
      if (isset($_SESSION['status'])) {
         $messageClass = strpos($_SESSION['status'], 'emailed') !== false ? 'success' : 'error';
         echo '<div class="luxury-message ' . $messageClass . '">
                  <i class="fa-solid fa-info-circle me-2"></i>' . $_SESSION['status'] . '
               </div>';
         unset($_SESSION['status']);
      }
      ?>
      
      <!-- Information Section -->
      <div class="luxury-info-section">
         <div class="luxury-info-title">
            <i class="fa-solid fa-shield-alt"></i>
            Secure Password Reset
         </div>
         <div class="luxury-info-text">
            We'll send you a secure link to reset your password. This link will expire in 24 hours for your security.
         </div>
      </div>
      
      <!-- Form -->
      <form action="" method="POST">
         <div class="luxury-form-group">
            <label class="luxury-form-label">
               <i class="fa-solid fa-envelope me-2"></i>Email Address
            </label>
            <input class="luxury-input" 
                   name="email" 
                   id="email" 
                   type="email" 
                   placeholder="Enter your registered email" 
                   required>
         </div>
         
         <button class="luxury-reset-btn" type="submit" name="password_reset_link">
            <i class="fa-solid fa-paper-plane me-2"></i>Send Reset Link
         </button>
      </form>
      
      <div class="luxury-divider"></div>
      
      <!-- Footer -->
      <div class="luxury-footer">
         <p class="luxury-footer-text">By continuing you agree to our</p>
         <div class="luxury-footer-links">
            <a href="termsofservice.php" class="luxury-footer-link">Terms of Service</a>
            <a href="privacypolicy.php" class="luxury-footer-link">Privacy Policy</a>
         </div>
      </div>
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
      // Add luxury animations and interactions
      document.addEventListener('DOMContentLoaded', function() {
         // Animate card on load
         const card = document.querySelector('.luxury-forgot-card');
         card.style.opacity = '0';
         card.style.transform = 'translateY(30px)';
         
         setTimeout(() => {
            card.style.transition = 'all 0.6s ease-out';
            card.style.opacity = '1';
            card.style.transform = 'translateY(0)';
         }, 100);
         
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
         
         // Add typing animation to logo
         const logo = document.querySelector('.luxury-logo');
         logo.addEventListener('mouseenter', function() {
            this.style.transform = 'scale(1.1) rotate(5deg)';
         });
         
         logo.addEventListener('mouseleave', function() {
            this.style.transform = 'scale(1) rotate(0deg)';
         });
         
         // Form validation enhancement
         const form = document.querySelector('form');
         const emailInput = document.getElementById('email');
         
         form.addEventListener('submit', function(e) {
            if (!emailInput.value) {
               e.preventDefault();
               emailInput.style.borderColor = '#EF4444';
               emailInput.style.boxShadow = '0 0 0 4px rgba(239, 68, 68, 0.2)';
               
               setTimeout(() => {
                  emailInput.style.borderColor = 'rgba(255, 215, 0, 0.3)';
                  emailInput.style.boxShadow = 'none';
               }, 3000);
            }
         });
      });
   </script>
</body>
</html>