<?php 



$query2sum=mysqli_query($conn,"SELECT sum(berat) as beratsave FROM saving where nokp='$nokp' and status='PAID'  ");
$res2sum=mysqli_fetch_array($query2sum);

$berat_saving=$res2sum['beratsave'];

if($berat_saving==""){
	$berat_saving = "0.00" ; 
}

 
$query2sum=mysqli_query($conn,"SELECT sum(jumlah) as jumlahmz_wallet FROM saving where nokp='$nokp' and transaction<>'Purchase' and status='PAID'  ");
$res2sum=mysqli_fetch_array($query2sum);

$jumlahmz_wallet=$res2sum['jumlahmz_wallet'];
$jumlahmz_wallet1 = number_format($jumlahmz_wallet,2);

?>