<?php
//payment-ebook-generate-gateway-call.php

include('inc/dt.php'); 
include('inc/sesi.php'); 
date_default_timezone_set("Asia/Kuala_Lumpur");

$hargapaymentgateway = 1.00;

$query2sum=mysqli_query($conn,"SELECT * FROM gateway");
$res2sum=mysqli_fetch_array($query2sum);

$secretkey=$res2sum['secretkey'];
$categorycode=$res2sum['categorycode'];														
													
//Toyyibpay
$toyyibpaykey = $secretkey ; 
$toyyibpaycategorycode = $categorycode ;

$item = 'Jewellery';

//Toyyip pay dev api
// $toyyibpaykey = '4fv6h6b3-5zwh-c30h-0dlm-229lhjjk150b';
// $toyyibpaycategorycode = 'v7lp40wh';

$nokp = mysqli_real_escape_string($conn,$_POST['buyer_ic_no']);
$nama = mysqli_real_escape_string($conn,$_POST['buyer_name']);
$nofon =  mysqli_real_escape_string($conn,$_POST['buyer_tel']);
$email =  mysqli_real_escape_string($conn,$_POST['buyer_email']);

$totalhargajual =  mysqli_real_escape_string($conn,$_POST['order_amount']);

$bill_id =  mysqli_real_escape_string($conn,$_POST['order_no']);
$kodbelian =  $bill_id ; 



$tarikh = date("Y-m-d");

$nl="RM " ;
     
$rmx100=($totalhargajual*100);
$some_data = array(
  'userSecretKey'=> $toyyibpaykey,
  'categoryCode'=> $toyyibpaycategorycode,
  'billName'=> $bill_id,
  'billDescription'=> 'Paid '.$nl.' '.number_format($totalhargajual,2),
  'billPriceSetting'=>1,
  'billPayorInfo'=>1,
  'billAmount'=>$rmx100,
  'billReturnUrl'=>'https://www.lalalgold.com/login/apps/status.php?kodbelian='.$kodbelian,
  'billCallbackUrl'=>'',
  'billExternalReferenceNo'=>$bill_id,
  'billTo'=>$nama,
  'billEmail'=>$email,
  'billPhone'=>$nofon,
  'billSplitPayment'=>0,
  'billSplitPaymentArgs'=>'',
  'billPaymentChannel'=>0,
  'billContentEmail'=>'Thank you so much for your order! We really appreciate it.',
  'billChargeToCustomer'=>2
  ); 

  $curl = curl_init();
  curl_setopt($curl, CURLOPT_POST, 1);
  curl_setopt($curl, CURLOPT_URL, 'https://toyyibpay.com/index.php/api/createBill');  
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
  curl_setopt($curl, CURLOPT_POSTFIELDS, $some_data);
  $result = curl_exec($curl);
  $info = curl_getinfo($curl);  
  curl_close($curl);
  $obj = json_decode($result,true);
  $billcode=$obj[0]['BillCode'];
  
 // echo print_r($some_data);
  //exit();
?>

<?php if(!empty($billcode)){ 

  $sql3 = "UPDATE mycart SET bill_id='$bill_id' WHERE nokp='$nokp' and status='UNPAID'";
  mysqli_query($conn,$sql3);

  header("location: https://toyyibpay.com/$billcode");
}
else
{
  echo "<script>alert('Tidak berjaya membuat belian, sila periksa maklumat anda.')</script>";
  echo"<script>window.history.go(-1);</script>";
}
 ?>



