<?php

session_start();

if (isset($_SESSION) && count($_SESSION) == 0) {
 $nofon = "-" ; 
	$name = "Please Login" ;
	
}

if (isset($_SESSION) && count($_SESSION) <> 0) {
 $nofon=$_SESSION['nofon'];
}


	//echo "<script>alert('$nokp')</script>"; // test echo

if(empty($_SESSION['nofon'])) {
 header('location:signout.php');
	echo"<script>window.location.href='signout.php';</script>";
exit();
        }

if($nofon==""){
	echo"<script>window.location.href='signout.php';</script>";
exit();
}

if($nofon<>"-"){
$query=mysqli_query($conn,"select * from agen where nofon='$nofon' ");
$res1=mysqli_fetch_array($query);
	$recno = $res1['recno'];
		$nama = $res1['nama'];
	$name = $res1['nama'];
	$nofon = $res1['nofon'];
	$email = $res1['email'];
	$alamat = $res1['alamat'];
	$username = $res1['username'];
	$nokp = $res1['nokp'];
	$akaun = $res1['akaun'];
	$pincode = $res1['pincode'];
}
	

$query=mysqli_query($conn,"select * from hargaemasjualmz where karat='22.0K' ");
$res1=mysqli_fetch_array($query);
$harganew = $res1['hargabiasa'];
$spread = $res1['spread'];
	
     ?>

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