<!doctype html>
<?php date_default_timezone_set("Asia/Kuala_Lumpur"); ?>
<html lang="en">
	
	<?php 

include('inc/dt.php'); 
include('inc/sesi.php'); 
	extract($_REQUEST);
	$search=mysqli_real_escape_string($conn, $_REQUEST['search']);
	$type=mysqli_real_escape_string($conn, $_REQUEST['type']);
	
	// Initialize conditions and flattened cond array
$conditions = [];
$cond = [];

// Function to escape input
function escape_array($input, $conn) {
    // Ensure the input is always treated as an array
    $array = is_array($input) ? $input : [$input];
    return array_map(function($value) use ($conn) {
        return mysqli_real_escape_string($conn, $value);
    }, $array);
}   

// Excluded keys
$excluded_keys = ['page_no', 'type', 'search'];

// Loop through all $_GET parameters
foreach ($_GET as $key => $value) {
    // Skip excluded keys
    if (in_array($key, $excluded_keys)) {
        continue;
    }

    // Ensure the value is not empty
    if (!empty($value)) {
        $escaped_values = escape_array($value, $conn); // Sanitize values
        $cond[] = $escaped_values; // Add to cond array

        $imploded_values = implode("','", $escaped_values); // Prepare for SQL
        $conditions[] = "$key IN ('$imploded_values')"; // Add to conditions
    }
}

$flat_cond = array_merge(...$cond);
	
	$online_order="0";
	//echo "<script>alert('$search')</script>"; // test echo
	
	
	if($search==""){
		$search="ALL";
	}
?>
   
<!-- Mirrored from askbootstrap.com/preview/eatsome/store.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Dec 2024 10:12:55 GMT -->
<head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" href="img/logo.png" type="image/png">
      <title>Lalal Gold App</title>
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
      <div class="bg-white shadow-sm p-3">
         <div class="d-flex align-items-center">
            <a href="index.php"><div class="gap-3 d-flex align-items-center">
              <i class="bi bi-arrow-left d-flex text-danger h2 m-0 back-page"></i>
              <i class="fa-solid fa-arrow-left"></i> <h3 class="fw-bold m-0"><img src="icon/logo2.png" width="200" class="center"></h3>
            </div></a>
            
         </div>
      </div>
      <!-- body -->
      
      <!-- tabs with search bar -->
      <main class="sticky-top">
         
		  
		  <?php 
		  if(isset($save))
{
			   $search_menu = mysqli_real_escape_string($conn, $_POST["search_menu"]);
			  
			  if($search==""){
				$search_menu="ALL"  ;
			  }
			  
			echo"<script>window.location.href='products.php?search=$search_menu';</script>";
}
		  ?>
		  
         <div class="bg-white px-3 pt-3">
			 <form method="post" enctype="multipart/form-data">
            <div class="input-group bg-white shadow rounded-md border p-1 mb-3">
               <span class="input-group-text border-0 bg-white"><i
                  class="fa-solid fa-magnifying-glass text-success"></i></span>
       
				<input type="text" name="search_menu" id="search_menu" class="shadow-none form-control border-0" value="<?php echo $search; ?>" placeholder="Search Menu">
				 
				
				
				
				<button class="btn btn-block btn-success" type="submit" name="save"><strong>Search</strong></button>
				
              </form>
				 
				 
			 
			 </div>
            
              
            <style>
.accordion {
  background-color: #eee;
  color: #444;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
  transition: 0.4s;
}

.active, .accordion:hover {
  background-color: #FFFFFF; 
}

.panel {
  padding: 0 18px;
  display: none;
  background-color: white;
  overflow: hidden;
}
</style>
</head>
<body>



<button class="accordion"><i class="fa fa-filter"></i> Filter Search</button>
<div class="panel">
  
	

	<div class="sidebar-widget filterBox filter-widget brand-filter">
                                    <div class="widget-title"><h2>Category</h2></div>
                                    <div class="widget-content filterDD">
                                        <ul class="clearfix">
											
												<?php
							
$query_a=mysqli_query($conn,"select * from marhun ");
while ($res_a = mysqli_fetch_array($query_a)) {
    $marhun = $res_a['marhun'];
  
	$query10b=mysqli_query($conn,"select count(recno) as bil_category from emasjualmz where marhun='$marhun ' ");
	$res10b=mysqli_fetch_array($query10b);

	$bil_category = $res10b['bil_category'];
    ?>
    <li>
        <input 
            type="checkbox" 
			name="<?=$marhun?>[]" 
            value="<?php echo $marhun; ?>" 
            id="<?php echo $marhun; ?>" 
            onclick="updateQueryString(this, '<?php echo $marhun; ?>')">
        <label for="<?php echo $marhun; ?>">
            <span></span><?php echo $marhun; ?> [<?php echo $bil_category; ?>]
        </label>
    </li>
    <?php
}
?>

                                  
                                        </ul>
                </div>
           </div>
	
	
	<?php 
							
	$query_bind=mysqli_query($conn,"select * from rekodciriemas");
while($res_bind=mysqli_fetch_array($query_bind))
{
			$ciriemas = $res_bind['ciri'];
			$datatype = $res_bind['datatype'];
	//echo "<script>alert('$ciriemas')</script>"; // test echo
			?>
								
                            
							<?php if($datatype=="List Box"){ ?>	
			<div class="sidebar-widget filterBox filter-widget brand-filter">
                                    <div class="widget-title"><h2><?php echo $ciriemas; ?></h2></div>
                                    <div class="widget-content filterDD">
                                        <ul class="clearfix">
											
												<?php
							
$query_a=mysqli_query($conn,"select * from dataciri where ciri='$ciriemas' ");
while ($res_a = mysqli_fetch_array($query_a)) {
    $dataciri = $res_a['dataciri'];
    $ciri = $res_a['ciri'];
	
		$query10a=mysqli_query($conn,"select count($ciri) as bilc from emasjualmz where $ciri='$dataciri ' ");
	$res10a=mysqli_fetch_array($query10a);

	$bilc = $res10a['bilc'];

    $selectedOccasions = isset($_GET[$ciri]) ? $_GET[$ciri] : [];
    ?>
    <li>
        <input 
            type="checkbox" 
            name="<?=$ciri?>[]" 
            value="<?php echo $dataciri; ?>" 
            id="<?php echo $dataciri; ?>" 
            onclick="updateQueryString(this, '<?php echo $ciri; ?>')" 
            <?php echo in_array($dataciri, $selectedOccasions) ? 'checked' : ''; ?>
        >
        <label for="<?php echo $dataciri; ?>">
            <span></span><?php echo $dataciri; ?> [<?php echo $bilc; ?>]
        </label>
    </li>
    <?php
}
?>

<script>
  function updateQueryString(checkbox, ciri) {
    const baseUrl = 'products.php';
    const queryString = new URLSearchParams(window.location.search);
    const filterBox = document.querySelector('.filterBox'); // First <div> with class 'filterBox'
    const filterList = filterBox.querySelector('.tags-list'); // <ul> with class 'tags-list'
    

    if (checkbox.checked) {
      queryString.append(ciri + '[]', checkbox.value);
    } else {
      const values = queryString.getAll(ciri + '[]');
      queryString.delete(ciri + '[]'); 
      values
        .filter(value => value !== checkbox.value) 
        .forEach(value => queryString.append(ciri + '[]', value)); 
    }

    window.location.href = baseUrl + '?' + queryString.toString();
  }

  document.addEventListener('DOMContentLoaded', function () {
    const filterBox = document.querySelector('.filterBox'); // First <div> with class 'filterBox'
    const filterList = filterBox.querySelector('.tags-list'); // <ul> with class 'tags-list'
    const clearAllButton = filterBox.querySelector('.brd-link'); // 'Clear All' button
    const checkboxes = document.querySelectorAll('input[type="checkbox"]');
    let checkboxToChoose = null;

    // Function to check and hide the filterBox if no <li> elements
    function checkAndHideFilterBox() {
        if (filterList.children.length === 0) {
            filterBox.style.display = 'none'; // Hide the filterBox
        }
    }

    // Add event listener for the 'Clear All' button
    // clearAllButton.addEventListener('click', function () {
    //     filterList.innerHTML = ''; // Clear all <li> elements
    //     checkAndHideFilterBox(); // Check and hide filterBox
    // });

    // Add event listener for each <i> icon to remove its parent <li>
    filterList.addEventListener('click', function (event) {
        if (event.target.classList.contains('anm-times-r')) {
            const listItem = event.target.closest('li'); // Find the closest <li>
            if (listItem) {
                const value = listItem.querySelector('.filter-value').textContent; // Get the value of the span inside <li>                
                listItem.remove(); // Remove the <li>
                checkAndHideFilterBox(); // Check and hide filterBox
                checkboxes.forEach(checkbox => {
                    if (checkbox.value === value && checkbox.checked) {
                        checkboxToChoose = checkbox; // Store the checkbox in the variable
                    }
                });
                // updateQueryString(checkboxToChoose, value);
                // console.log(checkboxToChoose.value);
                checkboxToChoose.click();
            }
        }
    });
  });

</script>                                   
                                        </ul>
                </div>
           </div>
								
                                
									<?php } ?>
							<?php } ?>
	
	</div>



<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}
</script>
	
         </div>
      </main>
      <!-- Contant -->
      <div class="p-3">
         <div class="row">
            <div class="col-12">
               <div class="tab-content" id="pills-tabContent">
                  <!-- 1st tab -->
                  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                     <div>
                        <!-- 1st product -->
						 
				<?php 
	if (isset($_GET['page_no']) && $_GET['page_no']!="") {
	$page_no = $_GET['page_no'];
	} else {
		$page_no = 1;
        }
 
	$total_records_per_page = 10;
    $offset = ($page_no-1) * $total_records_per_page;
	$previous_page = $page_no - 1;
	$next_page = $page_no + 1;
	$adjacents = "2"; 
 
	
	if($type=="NEW" && $search=="ALL"){					
$result_count=mysqli_query($conn,"SELECT COUNT(*) AS total_records FROM emasjualmz WHERE status='0' AND jenis='NEW' AND showhide='SHOW'" . (!empty($conditions) ? ' AND ' . implode(' AND ', $conditions) : ''));
	}
									
	if($type=="NEW" && $search<>"ALL"){					
$result_count=mysqli_query($conn,"select COUNT(*) As total_records from emasjualmz where (`marhun` LIKE '%$search%' or `design` like '%$search%') and jenis='NEW' and status='0' and showhide='SHOW'" . (!empty($conditions) ? ' AND ' . implode(' AND ', $conditions) : '')); 
	}
									
	if($type=="PRELOVED" && $search<>"ALL"){					
$result_count=mysqli_query($conn,"select COUNT(*) As total_records from emasjualmz where (`marhun` LIKE '%$search%' or `design` like '%$search%') and jenis='PRELOVED' and status='0'  and showhide='SHOW' "); 
	}
									
	if($type=="PRELOVED" && $search=="ALL"){					
$result_count=mysqli_query($conn,"select COUNT(*) As total_records from emasjualmz where status='0' and jenis='PRELOVED' and showhide='SHOW' "); 
	}
									
		if($type=="ALL" && $search=="ALL"){					
$result_count=mysqli_query($conn,"select COUNT(*) As total_records from emasjualmz where status='0' and showhide='SHOW' "); 
	}
									
	if($type=="ALL" && $search=="WAFER"){	
		
$result_count=mysqli_query($conn,"select COUNT(*) As total_records from emasjualmz where status='0' and jenis='WAFER' and showhide='SHOW'  "); 
	}	
									
			if($type=="ALL" && $search<>"ALL"){	
				//
$result_count=mysqli_query($conn,"select COUNT(*) As total_records from emasjualmz where (`marhun` LIKE '%$search%' or `design` LIKE '%$search%') or `nosiri`='$search' and status='0' and showhide='SHOW'"); 
	}					
						
	$total_records = mysqli_fetch_array($result_count);
	$total_records = $total_records['total_records'];
    $total_no_of_pages = ceil($total_records / $total_records_per_page);
	$second_last = $total_no_of_pages - 1; // total page minus 1

						// echo "<script>alert('$total_records')</script>"; // test echo
						 
					
?>
						 
						<?php 	if($total_records=="0"){ ?> 
						 
						 <center><h6><img src="icon/norecord.jpg"  width="200"></h6></center>
						 
						 <?php 	} ?> 
						 
						<?php
									
					if($type=="NEW" && $search=="ALL"){					
$query2a=mysqli_query($conn,"select * from emasjualmz where status='0' and jenis='NEW' and showhide='SHOW' " . (!empty($conditions) ? ' AND ' . implode(' AND ', $conditions) : '')." LIMIT $offset, $total_records_per_page"); 
	}
									
	if($type=="NEW" && $search<>"ALL"){					
$query2a=mysqli_query($conn,"select * from emasjualmz where (`marhun` LIKE '%$search%' or `design` like '%$search%') and jenis='NEW' and status='0' and showhide='SHOW' " . (!empty($conditions) ? ' AND ' . implode(' AND ', $conditions) : '')." LIMIT $offset, $total_records_per_page  "); 
	}
									
	
									
		if($type=="ALL" && $search=="ALL"){					
$query2a=mysqli_query($conn,"select * from emasjualmz where status='0' and showhide='SHOW' LIMIT $offset, $total_records_per_page "); 
	}
									
	if($type=="ALL" && $search=="WAFER"){	
		
$query2a=mysqli_query($conn,"select * from emasjualmz where status='0' and jenis='WAFER' and showhide='SHOW' LIMIT $offset, $total_records_per_page "); 
	}
									
								
									
			if($type=="ALL" && $search<>"ALL"){	
				//
$query2a=mysqli_query($conn,"select * from emasjualmz where (`marhun` LIKE '%$search%' or `design` LIKE '%$search%') or `nosiri`='$search' and status='0' and showhide='SHOW' LIMIT $offset, $total_records_per_page  "); 
	}
									
if($type=="ALL" && $search=="OTHERS"){	
		
$query2a=mysqli_query($conn,"select * from emasjualmz where status='0' and jenis='Others' and showhide='SHOW' LIMIT $offset, $total_records_per_page "); 
	}	
									
								
while($res2a=mysqli_fetch_array($query2a))
	
{
	
						 
						
	
			$recno_nosiri = $res2a['recno'];
	$nosiri = $res2a['nosiri'];
	$design = $res2a['design'];
	$jenis= $res2a['jenis'];
	$berat= $res2a['berat'];
	$upah= $res2a['upah'];
	
	if($design=="-"){
		$design="" ;
	}

	$modal = $res2a['hargamodal'];
	$panjang= $res2a['panjang'];
	$lebar= $res2a['lebar'];
	$saiz= $res2a['saiz'];
	$img = $res2a['img'];
	$marhun = $res2a['marhun'];
	$upah = $res2a['upah'];
	$subcategory = $res2a['subcategory'];
	
	$hargajual = $res2a['hargajual'];
	$subdesign = $res2a['subdesign'];
	
	
	
	$discomnew_p  = "0" ;
	$best_seller = "0" ;
	
	// image parameter
	
	 $query1z=mysqli_query($conn,"SELECT count(recno) as bil_p,img from image_parameter where subdesign='$subdesign' and (dari<='$berat' and hingga>='$berat')");
	$res1z=mysqli_fetch_array($query1z);

	$bil_p=$res1z['bil_p'];
	
	if($bil_p=="0"){
		$img_p = "noimage.jpg" ;
	}
	
	if($bil_p<>"0"){
	$img_p=$res1z['img'];
	}
	
	// end image parameter
	
		$checkjenis = substr($design, 0, 6);
	
	$panjang= $res2a['panjang'];
	$lebar= $res2a['lebar'];
	
	$hargajualcincinlelaki= $res2a['hargajual'];
	

	
		if($jenis=="NEW"){
			$orderpage = "product-details";
			$hargaemas = $harganew ; 
			$hargaemas_diskaun = $harganew - $discomnew_p ; 
	$hargajual = $berat * $harganew + $upah ;
		$diskaungram = $discomnew_p ;
			$jumlahdiskaun = $diskaungram * $berat ;  
			$hargaasal = $berat * $hargaemas ;
			if($akaun=="Membership"){
			$komisyen = (5 - $discomnew_p) * $berat;
				}
	$hargajual_diskaun  = ($hargaemas_diskaun) * $berat ; 	
	$hargajual_diskaunmember = ($harganew-3) * $berat ; 
	}
	
		if($jenis=="TEMPAHAN"){
			$orderpage = "product-details-order";
			$hargaemas = "0" ; 
			$hargaemas_diskaun = "0" ; 
	$hargajual = "0" ;
		$diskaungram = "0" ;
			$jumlahdiskaun = "0" ;  
			$hargaasal ="0" ;
			if($akaun=="Membership"){
			$komisyen = "0";
				}
	$hargajual_diskaun  = "0" ; 	
	$hargajual_diskaunmember = "0" ; 
	}
	
	
	if($jenis=="WAFER"){
			$orderpage = "product-details";
		
		if($berat=="0.25"){
			$hargaemas = $hargawafer25 ; 
			$diskaunwafer = $diswafer25_p ; 
			$comwafer = $max_diswafer25_p ;
			
						
		}
		
		
		
		if($berat=="1"){
			$hargaemas = $hargawafer1 ; 
			$diskaunwafer = $diswafer1_p ; 
			$comwafer = $max_diswafer1_p ;
		}
		
		if($berat=="5"){
			$hargaemas = $hargawafer5 ; 
			$diskaunwafer = $diswafer5_p ; 
			$comwafer = $max_diswafer5_p ;
		}
		
		if($berat=="10"){
			$hargaemas = $hargawafer10 ; 
			$diskaunwafer = $diswafer10_p ;
			$comwafer = $max_diswafer10_p ;
		}
		
		
			$hargaemas_diskaun = $hargaemas - $diskaunwafer ;
		
		$hargajual = $hargaemas ;
		$diskaungram = $diskaunwafer ;
			$jumlahdiskaun = $diskaungram * $berat ;  
			$hargaasal = $berat * $hargaemas ;
			if($akaun=="Membership"){
			$komisyen = ($comwafer - $diskaunwafer) * $berat;
				}
	$hargajual_diskaun  = $hargaemas_diskaun ; 
		
	$hargajual_diskaunmember = ($hargaemas-($comwafer/2)) ; 
	}
	
	if($jenis=="OTHERS"){
		$hargajual_diskaun = $hargajual ; 
			 $modal = $modal ; 
		$hargajual_diskaunmember = $hargajual ; 
		$orderpage = "product-details";
	}
	
	
    $untung = $hargajual_diskaun - $modal ; 
	$hargajual1 = number_format($hargajual,2);
	//$hargajual_diskaun1 = number_format($hargajual_diskaun,2);
	//$hargajual_diskaunmember1 = number_format($hargajual_diskaunmember,2);
			?>

 <div class="store-list-2">
                           <div class="row justify-content-between">
                              <div class="col-6">
                                 <?php if($best_seller=="1"){ ?>
								  <div class="d-flex align-items-center gap-2 mb-3">
                                    
                                    <div class="badge border border-warning text-warning">Bestseller</div>
                                 </div>
								  <?php } ?>
                                 <h3 class="fw-bold mb-1"><?php echo $marhun; ?></h3>
								  
                                 <p class="small text-muted mb-3">SKU : <?php echo $nosiri; ?>
									 
									 <br>Design : <?php echo $design; ?>
									 
								  <br>Sub Design : <?php echo $design; ?>
								  <br>Weight : <?php echo $berat; ?> gm
								  </p>
							
                               
								  
								  <h6 class="fw-bold">RM <?php echo $hargajual1; ?></h6>
								  
                                 <div class="badge border border-warning">
                                    <span><i class="fa-solid fa-star text-warning"></i></span>
                                    <span><i class="fa-solid fa-star text-warning"></i></span>
                                    <span><i class="fa-solid fa-star text-warning"></i></span>
                                    <span><i class="fa-solid fa-star text-warning"></i></span>
                                    <span><i class="fa-solid fa-star text-dark"></i></span>
                                    <span class="text-dark">95</span>
                                 </div>
                              </div>
							   
                              <div class="col-4">
								  
								  
								  <?php 
	

	
	?>
								  
								  <form method="post" enctype="multipart/form-data">
								  
									  <input hidden="" class="shadow-none form-control rounded-3" name="menu_cart" id="menu_cart" type="text"
                                            value="<?php echo $marhun; ?>"  placeholder="" required>
									  
									  <input hidden="" class="shadow-none form-control rounded-3" name="nosiri_data" id="nosiri_data" type="text"
                                            value="<?php echo $nosiri; ?>"  placeholder="" required>
								  
                                 <div class="card border-0">
                                    <img
                                       src="../product_image/<?php echo $img_p; ?>"
                                       class="card-img-top rounded-3" alt="...">
                                    <div class="card-body d-grid px-0 pt-2 pb-0">
                                       	
										
										<button class="btn btn-outline-success fw-bold text-uppercase btn-sm rounded" type="submit" name="save2"><strong>Add +</strong></button>
										
										<button class="btn btn-outline-success fw-bold text-uppercase btn-sm rounded" type="submit" name="save3"><strong>Video Call </strong></button>
									
									
										</form>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
						  <hr>
						 <?php }
						 
						 	if(isset($save2))
{
		 $nosiri_data = mysqli_real_escape_string($conn, $_POST["nosiri_data"]);

$query2=mysqli_query($conn,"select * from emasjualmz where nosiri='$nosiri_data' ");
$res12=mysqli_fetch_array($query2);
								
$nosiri = $res12['nosiri'];
	$berat = $res12['berat'];	
	$minupah = $res12['minupah'];									
		$upah = $res12['upah'];		
		$design = $res12['design'];
								$design = $res12['design'];
								
	$untungupah = $upah - $minupah ;
	$daftaroleh = "-" ;
	$komisyen = "0" ;
							
	$hargajualcart = $berat * $harganew + $upah ;
								
								
		
	if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO mycart (`tarikh`, `masa`, `username`, `nokp`, `nosiri`, `design`, `berat`, `hargaemas`, `diskaun`,`hargaasal`, `jumlah`, `untung`,`akaun`,`status`, `daftaroleh`, `komisyen`, `bill_id`,`jenis`,`kuantiti`)
VALUES (CURDATE(), CURTIME(), '$username','$nokp','$nosiri','$design','$berat','$harganew','0.00','$hargajualcart','$hargajualcart','$untungupah','CUSTOMER','UNPAID','$daftaroleh','$komisyen','-','NEW','1')";

if ($conn->query($sql) === TRUE) {
  echo"<script>window.location.href='cart.php';</script>";
	
	//$showModalsuccess = "true";
  //$success = $design . " [" . $nosiri . "] " . "Added to cart" ;
	
} else {
  // echo "<script>alert('failed')</script>"; 
}							
								
								

							
								
	} ?>
						 
						
						 
						  	
				<nav class="clearfix pagination-bottom">
                                    <ul class="pagination justify-content-center">
    
	<li class="page-item"<?php if($page_no <= 1){ echo "class='disabled'"; } ?>>
	<a <?php if($page_no > 1){ echo "href='?page_no=$previous_page&type=$type&search=$search'"; } ?>>Previous</a>
	</li>
       
    <?php 
	if ($total_no_of_pages <= 10){  	 
		for ($counter = 1; $counter <= $total_no_of_pages; $counter++){
			if ($counter == $page_no) {
		   echo "<li class='page-item active'><a>$counter</a></li>";	
				}else{
           echo "<li class='page-item active'><a href='?page_no=$counter&type=$type&search=$search'>$counter</a></li>";
				}
        }
	}
	elseif($total_no_of_pages > 10){
		
	if($page_no <= 4) {			
	 for ($counter = 1; $counter < 8; $counter++){		 
			if ($counter == $page_no) {
		   echo "<li class='page-item active'><a>$counter</a></li>";	
				}else{
           echo "<li class='page-item'><a href='?page_no=$counter&type=$type&search=$search'>$counter</a></li>";
				}
        }
		echo "<li class='page-item'><a>...</a></li>";
		echo "<li class='page-item'><a href='?page_no=$second_last&type=$type&search=$search'>$second_last</a></li>";
		echo "<li class='page-item'><a href='?page_no=$total_no_of_pages&type=$type&search=$search'>$total_no_of_pages</a></li>";
		}
 
	 elseif($page_no > 4 && $page_no < $total_no_of_pages - 4) {		 
		echo "<li class='page-item'><a href='?page_no=1&type=$type&search=$search'>1</a></li>";
		echo "<li class='page-item'><a href='?page_no=2&type=$type&search=$search'>2</a></li>";
        echo "<li class='page-item'><a>...</a></li>";
        for ($counter = $page_no - $adjacents; $counter <= $page_no + $adjacents; $counter++) {			
           if ($counter == $page_no) {
		   echo "<li class='page-item active'><a>$counter</a></li>";	
				}else{
           echo "<li class='page-item'><a href='?page_no=$counter&type=$type&search=$search'>$counter</a></li>";
				}                  
       }
       echo "<li class='page-item'><a>...</a></li>";
	   echo "<li class='page-item'><a href='?page_no=$second_last&type=$type&search=$search'>$second_last</a></li>";
	   echo "<li class='page-item'><a href='?page_no=$total_no_of_pages&type=$type&search=$search'>$total_no_of_pages</a></li>";      
            }
		
		else {
        echo "<li><a href='?page_no=1&type=$type&search=$search'>1</a></li>";
		echo "<li><a href='?page_no=2&type=$type&search=$search'>2</a></li>";
        echo "<li><a>...</a></li>";
 
        for ($counter = $total_no_of_pages - 6; $counter <= $total_no_of_pages; $counter++) {
          if ($counter == $page_no) {
		   echo "<li class='page-item active'><a>$counter</a></li>";	
				}else{
           echo "<li class='page-item'><a href='?page_no=$counter&type=$type&search=$search'>$counter</a></li>";
				}                   
                }
            }
	}
?>
	
		
    
	<li <?php if($page_no >= $total_no_of_pages){ echo "class='disabled'"; } ?>>
	<a <?php if($page_no < $total_no_of_pages) { echo "href='?page_no=$next_page&type=$type&search=$search'"; } ?>>Next</a>
	</li>
    <?php if($page_no < $total_no_of_pages){
		echo "<li class='page-item'><a href='?page_no=$total_no_of_pages&type=$type&search=$search'>Last &rsaquo;&rsaquo;</a></li>";
		} ?>
</ul>
                                </nav>		 
                       
                        <!-- 2nd product -->
                        
                        <!-- 3rd product -->
                        
                     </div>
                  </div>
                  <!-- 2nd tab -->
                  
                  <!-- 3rd tab -->
				   
                  
               </div>
            </div>
         </div>
      </div>
	   
	   
      <!-- Model -->
      <!-- Button trigger modal -->
      <!-- Modal -->
	   
	   
	  
	   
	   <div class="modal fade" id="checkModalsuccessid" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						
						<div class="modal-body">
							<center>
								
								<strong><?php echo $success; ?></strong>
								
								<br><img src="img/cart.gif" width="200" class="center">
								
								<br><a class="btn btn-warning" href="product-details.php?product=<?php echo $product; ?>">OK</a>
								<a class="btn btn-warning" href="mycart.php">View My Cart</a>
								</div></br></center>
						
							
							
					</div>
				</div>
			</div>
	
	   
      <div class="modal fade" id="exampleModal" tabindex="-1" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content border-0">
               <div class="modal-header border-0">
                  <h5 class="modal-title">Pizza</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
               </div>
               <div class="modal-body p-0">
                  <div><img
                     src="img/s8.jpg"
                     alt="" class="img-fluid"></div>
                  <div class="p-3">
                     <div class="d-flex align-items-center gap-2 mb-2">
                        <img src="img/veg.jpg" alt=""
                           class="img-fluid ch-20">
                        <div class="badge border border-warning text-warning">Bestseller</div>
                     </div>
                     <h3 class="fw-bold mb-2">Pizza</h3>
                     <div class="badge border border-warning">
                        <span><i class="fa-solid fa-star text-warning"></i></span>
                        <span><i class="fa-solid fa-star text-warning"></i></span>
                        <span><i class="fa-solid fa-star text-warning"></i></span>
                        <span><i class="fa-solid fa-star text-warning"></i></span>
                        <span><i class="fa-solid fa-star text-dark"></i></span>
                        <span class="text-dark">95</span>
                     </div>
                  </div>
               </div>
               <div class="modal-footer d-flex justify-content-between">
                  <div class="btn btn-white border border-danger col-3 px-1">
                     <div class="d-flex align-items-start justify-content-between px-1">
                        <div class="minus"><i class="fa-solid fa-minus text-danger"></i></div>
                        <input class="shadow-none form-control text-center border-0 p-0 box" type="text" placeholder=""
                           aria-label="default input example" value="1">
                        <div class="plus"><i class="fa-solid fa-plus text-danger"></i></div>
                     </div>
                  </div>
                  <a href="cart.html" class="btn btn-danger col-8">Add item</a>
               </div>
            </div>
         </div>
      </div>
      <!-- Coupon -->
      <!-- Modal -->
      <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content border-0">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Coupons</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
               </div>
               <div class="modal-body p-0">
                  <div class="p-3">
                     <div>
                        <div class="mb-2">
                           <div class="mb-3"><img src="img/p1.png" alt="" class="img-fluid ch-40 border rounded-2"></div>
                           <div class="h4 m-0">Get 50% OFF up to $100</div>
                        </div>
                        <p class="text-muted">Valid on total value of items worth $159 or more.&nbsp;<span class="text-dark">View Details</span></p>
                        <div class="d-flex justify-content-between pb-3 align-items-center">
                           <div class="text-uppercase fw-bold border border-danger text-danger rounded px-2 py-1 h5 m-0">maxsafety</div>
                           <div><a href="#" data-bs-dismiss="modal" aria-label="Close" class="text-decoration-none text-danger">Apply</a></div>
                        </div>
                        <div class="text-primary">You will save $100 with this code</div>
                     </div>
                     <hr>
                     <div>
                        <div class="mb-2">
                           <div class="mb-3"><img src="img/p1.png" alt="" class="img-fluid ch-40 border rounded-2"></div>
                           <div class="h4 m-0">50% OFF up to $100 and $30 Paytm cashback using Paytm</div>
                        </div>
                        <p class="text-muted">Valid on total value of items worth $159 or more.&nbsp;<span class="text-dark">View Details</span></p>
                        <div class="d-flex justify-content-between pb-3 align-items-center">
                           <div class="text-uppercase fw-bold border border-danger text-danger rounded px-2 py-1 h5 m-0">zompaytm</div>
                           <div><a href="#" data-bs-dismiss="modal" aria-label="Close" class="text-decoration-none text-danger">Apply</a></div>
                        </div>
                        <div class="text-primary">You will save $100 &amp; get extra cashback with this code</div>
                     </div>
                     <hr>
                     <div>
                        <div class="mb-2">
                           <div class="mb-3"><img src="img/p2.png" alt="" class="img-fluid ch-40 border rounded-2"></div>
                           <div class="h4 m-0">Get 60% OFF up to $140</div>
                        </div>
                        <p class="text-muted">Valid on total value of items worth $159 or more.&nbsp;<span class="text-dark">View Details</span></p>
                        <div class="d-flex justify-content-between pb-3 align-items-center">
                           <div class="text-uppercase fw-bold border border-danger text-danger rounded px-2 py-1 h5 m-0">simplparty</div>
                           <div><a href="#" data-bs-dismiss="modal" aria-label="Close" class="text-decoration-none text-danger">Apply</a></div>
                        </div>
                        <div class="text-primary">You will save $140 with this code</div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- sidebar -->
          <?php include('inc/navbar.php') ?>
      <!-- Bootstrap core JavaScript -->
      <script src="vender/jquery/jquery.min.js" type="ff5e3dd6d3be87640f88b08d-text/javascript"></script>
      <script src="vender/bootstrap/js/bootstrap.bundle.min.js" type="ff5e3dd6d3be87640f88b08d-text/javascript"></script>
      <!-- slick Slider JS-->
      <script src="vender/slick/slick/slick.min.js" type="ff5e3dd6d3be87640f88b08d-text/javascript"></script>
      <!-- Sidebar JS-->
      <script src="vender/sidebar/hc-offcanvas-nav.js" type="ff5e3dd6d3be87640f88b08d-text/javascript"></script>
      <!-- Javascript -->
      <script src="js/custom.js" type="ff5e3dd6d3be87640f88b08d-text/javascript"></script>
   <script src="../../cdn-cgi/scripts/7d0fa10a/cloudflare-static/rocket-loader.min.js" data-cf-settings="ff5e3dd6d3be87640f88b08d-|49" defer></script><script defer src="https://static.cloudflareinsights.com/beacon.min.js/vcd15cbe7772f49c399c6a5babf22c1241717689176015" integrity="sha512-ZpsOmlRQV6y907TI0dKBHq9Md29nnaEIPlkf84rnaERnq6zvWvPUqr2ft8M1aS28oN72PdrCzSjY4U6VaAw1EQ==" data-cf-beacon='{"rayId":"8ee3bd15ac757703","version":"2024.10.5","r":1,"serverTiming":{"name":{"cfExtPri":true,"cfL4":true,"cfSpeedBrain":true,"cfCacheStatus":true}},"token":"dd471ab1978346bbb991feaa79e6ce5c","b":1}' crossorigin="anonymous"></script>
</body>

<!-- Mirrored from askbootstrap.com/preview/eatsome/store.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Dec 2024 10:12:59 GMT -->
</html>