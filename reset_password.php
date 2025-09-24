<!doctype html>
<?php date_default_timezone_set("Asia/Kuala_Lumpur"); ?>
<html lang="en">

<?php
session_start();
include('inc/dt.php');

extract($_REQUEST);
if (isset($_POST['password_update'])) {
    $email = mysqli_real_escape_string($con, $_POST['email']);
    $new_password = mysqli_real_escape_string($con, $_POST['new_password']);
    $confirm_password = mysqli_real_escape_string($con, $_POST['confirm_password']);
    $verify_token = mysqli_real_escape_string($con, $_POST['password_token']);
    if (!empty($verify_token)) {
        if (!empty($email) && !empty($new_password) && !empty($confirm_password)) {
            $check_token = "SELECT verify_token FROM agen WHERE verify_token='$verify_token'LIMIT 1";
            $check_token_run = mysqli_query($con, $check_token);

            if (mysqli_num_rows($check_token_run) > 0) {
                if ($new_password == $confirm_password) {
                    $update_password = "UPDATE agen SET password ='$new_password' WHERE verify_token='$verify_token'LIMIT 1";
                    $update_password_run = mysqli_query($con, $update_password);
                    if ($update_password_run) {
                        $new_token = md5(rand()) . "lalalgold";
                        $update_to_new_token = "UPDATE agen SET verify_token ='$new_token' WHERE verify_token='$verify_token'LIMIT 1";
                        $update_to_new_token_run = mysqli_query($con, $update_to_new_token);
                        $_SESSION['status'] = "Your password have been changed";
                        header("location: reset_password.php?token=$verify_token&email=$email");
                        exit(0);
                    } else {
                        $_SESSION['status'] = " Reset Password Failed . Please Try Again.!";
                        header("location: reset_password.php?token=$verify_token&email=$email");
                        exit(0);
                    }
                } else {
                    $_SESSION['status'] = "Password and Confirm Password does not match";
                    header("location: reset_password.php?token=$verify_token&email=$email");
                    exit(0);
                }
            } else {
                $_SESSION['status'] = "Link already expired. Please request another link";
                header("location: reset_password.php?token=$verify_token&email=$email");
                exit(0);
            }
        } else {
            $_SESSION['status'] = "All Filled are Mandotory";
            header("location: reset_password.php?token=$verify_token&email=$email");
            exit(0);
        }
    } else {
        $_SESSION['status'] = "Link already expired. Please request another link";
        header("location: reset_password.php");
        exit(0);
    }
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
    <div>
        <center><img src="icon/logo2.png" width="200" style="margin-top: 100px;" class="center"></center>
    </div>
    <form action="" method="POST">
        <input type="hidden" name="password_token" value="<?php if (isset($_GET['token'])) {
                                                                echo $_GET['token'];
                                                            } ?>">
        <center>
            <div style="margin-top: 50px; width: 700px" class="card p-4 shadow p-3 mb-5 bg-white rounded ">
                <div class="form-title">
                    <?php
                    if (isset($_SESSION['status'])) {
                    ?>
                        <div class="text-danger" style="display: flex; justify-content: center; width: 600px">
                            <h5><?= $_SESSION['status']; ?></h5>
                        </div>
                    <?php
                        unset($_SESSION['status']);
                    }
                    ?>
                </div>
                <div class="d-flex gap-3 align-items-center justify-content-center mb-2">
                    <div class="w-25">
                        <hr>
                    </div>
                    <h2 class="text-muted mb-4">Reset Password</h2>
                    <div class="w-25">
                        <hr>
                    </div>
                </div>
                <div class="mb-3">
                    <div class="input-group mb-2">
                        <input id="nofon_d" name="email" value="<?php if (isset($_GET['email'])) {
                                                                    echo $_GET['email'];
                                                                } ?>" type="hidden" placeholder="Your Email Address" class="form-control lgn_input" readonly>
                    </div>
                    <center>
                        <div style="width: 600px;" class="input-group mb-2">
                            <input class="shadow-none form-control rounded-3" name="new_password" id="password_d" type="password" placeholder="Enter your password" required oninput="validatePasswords()">
                        </div>

                        <div style="width: 600px;" class="input-group mb-2">
                            <input class="shadow-none form-control rounded-3" name="confirm_password" id="confirmpassword_d" type="password" placeholder="Confirm you password" required oninput="validatePasswords()">

                        </div>

                        <div id="passwordError" style="color:red; display:none;">Passwords do not match!</div>
                    </center>

                    <script>
                        function validatePasswords() {
                            const password = document.getElementById('password_d').value;
                            const confirmPassword = document.getElementById('confirmpassword_d').value;
                            const errorMsg = document.getElementById('passwordError');

                            if (password !== confirmPassword) {
                                errorMsg.style.display = 'block';
                            } else {
                                errorMsg.style.display = 'none';
                            }
                        }
                    </script>


                    <div class="d-grid">
                        <center><button style="width: 600px; margin-top:10px " class="btn btn-success btn-lg" type="submit" name="password_update">Reset Password</button></center>
                    </div>

                    <div class="col-lg-12 text-center">
                        <?php
                        if (isset($message)) {
                            echo '<font color="#FFFFFF"><div class="form-group">
            <h6 class="bg-warning" style="padding:10px;border-radius:5px">' . $message . '</h6></div></font>';
                        }
                        ?>
                    </div>
        </center>

    </form>
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