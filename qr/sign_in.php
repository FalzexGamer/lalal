<!doctype html>
<?php date_default_timezone_set("Asia/Kuala_Lumpur"); ?>
<html lang="en">

<?php
session_start();

include('inc/dt.php');
extract($_REQUEST);

if (isset($save)) {


   if (!empty($_POST["nofon"]) && !empty($_POST["password"])) {
      $nofon = mysqli_real_escape_string($conn, $_POST["nofon"]);
      $pass = mysqli_real_escape_string($conn, $_POST["password"]);

      if ($nofon == "-") {
         header('location:signout.php');
         exit();
      }

      $sql = "select * from agen where (nofon='$nofon' or username='$nofon') && password='$pass' limit 1";
      $result = mysqli_query($conn, $sql);
      $user = mysqli_fetch_array($result);
      if ($user) {
         if (!empty($_POST["remember"])) {
            setcookie("member_login", $nofon, time() + (10 * 365 * 24 * 60 * 60));
            setcookie("password", $password, time() + (10 * 365 * 24 * 60 * 60));
            $_SESSION["nofon"] = $user['nofon'];
         } else {
            $_SESSION["nofon"] = $user['nofon'];
            if (isset($_COOKIE["member_login"])) {
               setcookie("member_login", "");
            }
            if (isset($_COOKIE["password"])) {
               setcookie("password", "");
            }
         }
         header("location:index.php");
      } else {
         $message = "Please Enter Phone number and Correct Password";
      }
   } else {
      $message = "Please Field All Form !";
   }
}

if (isset($_SESSION['nokp'])) {
   header("Location: main.php");
   exit();
}

?>

<!-- Mirrored from askbootstrap.com/preview/eatsome/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Dec 2024 10:13:01 GMT -->

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="icon" href="img/logo.png" type="image/png">
   <title>Lalal Gold</title>
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
   <form method="post" enctype="multipart/form-data">
      <div><img src="img/header.jpg" alt="" class="img-fluid"></div>
      <div class="bg-white p-4">

         <center><img src="icon/logo2.png" width="150" class="center"></center>

         <div class="text-center px-4 mb-4">
            <h1 class="fw-bold">Sign In To <br>Lalal Gold App</h1>
         </div>
         <div class="d-flex gap-3 align-items-center justify-content-center mb-2">
            <div class="w-25">
               <hr>
            </div>
            <div class="text-muted">Log in or sign up</div>
            <div class="w-25">
               <hr>
            </div>
         </div>
         <div class="mb-3">

            <div class="input-group mb-2">
               <span class="input-group-text bg-white me-2">

                  Username :


               </span>
               <input class="shadow-none form-control rounded-3" name="nofon" id="nofon" type="text"
                  value="<?php if (isset($_COOKIE["member_login"])) {
                              echo $_COOKIE["member_login"];
                           } ?>" placeholder="enter your username" required>
            </div>

            <div class="input-group mb-2">
               <span class="input-group-text bg-white me-2">

                  Password :


               </span>
               <input class="shadow-none form-control rounded-3" name="password" id="password" type="password"
                  value="<?php if (isset($_COOKIE["password"])) {
                              echo $_COOKIE["password"];
                           } ?>" placeholder="enter your password" required>
            </div>

            <div class="col-lg-12 text-center">
               <input type="checkbox" name="remember" <?php if (isset($_COOKIE["member_login"])) { ?> checked <?php } ?> />
               <label for="remember-me">
                  <font color="#000000">Remember me</font>
               </label>
            </div>

            <div class="d-grid">
               <button class="btn btn-success btn-lg" type="submit" name="save"><?php echo str_repeat('&nbsp;', 20); ?>Sign In <?php echo str_repeat('&nbsp;', 20); ?></button>

            </div>

            <br>
            <div class="col-lg-12 text-center">
               <?php
               if (isset($message)) {
                  echo '<font color="#FFFFFF"><div class="form-group">
            <h6 class="bg-warning" style="padding:10px;border-radius:5px">' . $message . '</h6></div></font>';
               }
               ?>
            </div>
   </form>
   </div>
   <center>
      <a href="forgot_password.php" style="color: green;" class="fs-6">Forgotten Password</a>
   </center>
   <div class="d-flex gap-3 align-items-center justify-content-center mb-2">
      <div class="w-50">
         <hr>
      </div>
      <div class="text-muted">or</div>
      <div class="w-50">
         <hr>

      </div>
   </div>

   <div class="d-flex gap-3 align-items-center justify-content-center mb-4">

      <a href="register.php"><img src="icon/register.jpg" width="150" class="center"></a>



   </div>

   <!-- Details -->
   <div class="text-center">
      <p class="small mb-2 text-muted">By continuing you agree to our</p>
      <div class="d-flex justify-content-center gap-3 small">
         <div><a href="termsofservice.php" class="link-dark">Terms of Service</a></div>
         <div><a href="privacypolicy.php" class="link-dark">Privacy Policy</a></div>

      </div>
   </div>
   </div>
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
   <script src="vender/jquery/jquery.min.js" type="ee10fb63c2243530f9bdd056-text/javascript"></script>
   <script src="vender/bootstrap/js/bootstrap.bundle.min.js" type="ee10fb63c2243530f9bdd056-text/javascript"></script>
   <!-- slick Slider JS-->
   <script src="vender/slick/slick/slick.min.js" type="ee10fb63c2243530f9bdd056-text/javascript"></script>
   <!-- Sidebar JS-->
   <script src="vender/sidebar/hc-offcanvas-nav.js" type="ee10fb63c2243530f9bdd056-text/javascript"></script>
   <!-- Javascript -->
   <script src="js/custom.js" type="ee10fb63c2243530f9bdd056-text/javascript"></script>
   <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="ee10fb63c2243530f9bdd056-|49" defer></script>
   <script defer src="https://static.cloudflareinsights.com/beacon.min.js/vcd15cbe7772f49c399c6a5babf22c1241717689176015" integrity="sha512-ZpsOmlRQV6y907TI0dKBHq9Md29nnaEIPlkf84rnaERnq6zvWvPUqr2ft8M1aS28oN72PdrCzSjY4U6VaAw1EQ==" data-cf-beacon='{"rayId":"8ee3bd40ffd07703","version":"2024.10.5","r":1,"serverTiming":{"name":{"cfExtPri":true,"cfL4":true,"cfSpeedBrain":true,"cfCacheStatus":true}},"token":"dd471ab1978346bbb991feaa79e6ce5c","b":1}' crossorigin="anonymous"></script>
</body>

<!-- Mirrored from askbootstrap.com/preview/eatsome/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Dec 2024 10:13:01 GMT -->

</html>