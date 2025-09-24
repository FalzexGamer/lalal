<?php
session_start();
//session_destroy();
unset($_SESSION['nokp']);
session_destroy();
echo "<script>window.location='sign_in.php'</script>";

?>
