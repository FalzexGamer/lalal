

	   <?php 


	   
	$query1z=mysqli_query($conn,"SELECT count(recno) as bilcart from mycart where username='$username' and status='UNPAID'");
	$res1z=mysqli_fetch_array($query1z);

	$bilcart=$res1z['bilcart'];
	   
	   ?>

<div class="fixed-bottom bg-white shadow px-3 py-2 osahan-nav-bottom">
         <div class="row links">
            <div class="col-3 text-center">
               <a href="cart.php">
                  <span><i class="bi bi-truck h1 active"></i></span>
				   <img src="icon/cart1.png" width="40" class="center">
                  <p class="m-0">Cart (<?php echo $bilcart; ?>)</p>
               </a>
            </div>
            <div class="col-3 p-0 text-center">
               <a href="mypurchase.php">
                  <span><i class="bi bi-percent h1"></i></span>
                  
				   <img src="icon/544587.png" width="40" class="center">
				   <p class="m-0">My Purchase</p>
               </a>
            </div>
            <div class="col-3 p-0 text-center">
               <a href="memberqr.php">
                  <span><i class="bi bi-basket h1"></i></span>
				   <img src="icon/mypoint.png" width="45" class="center">
                  <p class="m-0">Redeem</p>
               </a>
            </div>
            <div class="col-3 p-0 text-center">
               <a href="profile.php">
                  <span><i class="bi bi-receipt h1"></i></span>
				    <img src="icon/profile.png" width="40" class="center">
                  <p class="m-0">Profile</p>
               </a>
            </div>
         </div>
      </div>