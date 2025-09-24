<?php

include('../inc/dt.php'); 
include('../inc/sesi.php'); 
date_default_timezone_set("Asia/Kuala_Lumpur");

extract($_REQUEST);

$castoyyip = 0.00;
$hargapaymentgateway = 1.00;


//$kodbelian=mysqli_real_escape_string($conn,$_REQUEST['billcode']); //code fix
$status_id=mysqli_real_escape_string($conn,$_REQUEST['status_id']); //terima 1
$billcode=mysqli_real_escape_string($conn,$_REQUEST['billcode']); //code fix
$order_id=mysqli_real_escape_string($conn,$_REQUEST['order_id']); //Kod tempahan
$kodbelian=$order_id ; 
$msg=mysqli_real_escape_string($conn,$_REQUEST['msg']); //Example ok
$transaction_id=mysqli_real_escape_string($conn,$_REQUEST['transaction_id']); 

$query=mysqli_query($conn,"SELECT * from mycart where username='$username' and bill_id='$kodbelian' LIMIT 1");
$res=mysqli_fetch_array($query);
$recno=$res['recno'];

$tarikh=$res['tarikh'];
$status=$res['status'];
//$bill_id=$res['bill_id'];ww


$jumlah=$res['jumlah'];
//$transaksi=$res['transaksi'];
//$tranid=$res['tranid'];

//Query maklumat
$some_data = array(
    'billCode' => $billcode,
    'billpaymentStatus' => '1'
  );  

  $curl = curl_init();

  curl_setopt($curl, CURLOPT_POST, 1);
  curl_setopt($curl, CURLOPT_URL, 'https://toyyibpay.com/index.php/api/getBillTransactions');  
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
  curl_setopt($curl, CURLOPT_POSTFIELDS, $some_data);

  $result = curl_exec($curl);
  $info = curl_getinfo($curl);  
  curl_close($curl);

  $obj = json_decode($result,true);
  $toyyib_billName=$obj[0]['billName'];
  $toyyib_billDescription=$obj[0]['billDescription'];
  $toyyib_billTo=$obj[0]['billTo'];
  $toyyib_billEmail=$obj[0]['billEmail'];
  $toyyib_billPhone=$obj[0]['billPhone'];
  $toyyib_billStatus=$obj[0]['billStatus'];
  $toyyib_billPermalink=$obj[0]['billPermalink'];
  $toyyib_categoryCode=$obj[0]['categoryCode'];
  $toyyib_categoryName=$obj[0]['categoryName'];
  $toyyib_userName=$obj[0]['userName'];
  $toyyib_billpaymentChannel=$obj[0]['billpaymentChannel'];
  $toyyib_billSplitPayment=$obj[0]['billSplitPayment'];
  $toyyib_billSplitPaymentArgs=$obj[0]['billSplitPaymentArgs'];
  $toyyib_billpaymentSettlement=$obj[0]['billpaymentSettlement'];
  $toyyib_billpaymentSettlementDate=$obj[0]['billpaymentSettlementDate'];
  $toyyib_billPaymentDate=$obj[0]['billPaymentDate'];
  $toyyib_billpaymentStatus=$obj[0]['billpaymentStatus'];
  $toyyib_billpaymentAmount=$obj[0]['billpaymentAmount'];
  $toyyib_billpaymentInvoiceNo=$obj[0]['billpaymentInvoiceNo'];



  if($toyyib_billpaymentStatus==1) 
  {
	 // echo "<script>alert('$kodbelian')</script>"; // test echo
	  
  //  $bayaran=$toyyib_billpaymentAmount-$castoyyip;

$sql3 = "UPDATE mycart SET status='PAID' where bill_id='$kodbelian' and username='$username'";

    mysqli_query($conn,$sql3);
    
    if (mysqli_query($conn,$sql3))
    {       
        //echo("<SCRIPT language='javascript'>window.alert('Berjaya updates'); </SCRIPT>");  
		$queryloop=mysqli_query($conn,"select * from mycart where username='$username' and bill_id='$kodbelian' ");
while($resloop=mysqli_fetch_array($queryloop))
{
$nosiri_paid = $resloop['nosiri'];	
	
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "UPDATE emasjualmz SET status='1',username='$username',bill_id='$kodbelian' WHERE nosiri='$nosiri_paid' and status='0' limit 1 ";

if ($conn->query($sql) === TRUE) {
  //echo "Record updated successfully";
} else {
 // echo "Error updating record: " . $conn->error;
}	
	
}
				
	//########################### INSERT KOMISYEN
	
	if($akaun=="Membership"){
		
		$query2a=mysqli_query($conn,"select sum(komisyen) as unpaid from mycart where nokp='$nokp' and status='Paid' and bill_id='$kodbelian'");
	$res2a=mysqli_fetch_array($query2a);

	$unpaidkomisyen=$res2a['unpaid'];
	
	if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO komisyen (`tarikh`, `masa`, `noresit`, `nokp`, `daftaroleh`, `jumlah`, `detail`, `status`, `cawangan`, `transaction_code`)
VALUES (CURDATE(), CURTIME(), '$kodbelian','$nokp','$daftaroleh','$unpaidkomisyen','Commission MZ Gold Online Shop','Unpaid','-','$kodbelian')";

if ($conn->query($sql) === TRUE) {
  //echo "New record created successfully";
} else {
  //echo "Error: " . $sql . "<br>" . $conn->error;
}
	}
//########################### END  INSERT KOMISYEN							
  
		
      } 
    else
    {      
        //echo("<SCRIPT language='javascript'>window.alert('x update'); </SCRIPT>");                        
    }

  

    echo"<script>window.location.href='payment.php?bill_id=$kodbelian';</script>";

  }

 else
  {
    echo"<script>window.location.href='failed.php?bill_id=$kodbelian';</script>";
  }
    
  





?>