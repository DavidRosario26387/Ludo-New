<?php 
/*
    
*/
 $con = mysqli_connect("localhost","","",""); 
 date_default_timezone_set("Asia/Kolkata"); 
 $date = date("d-M-Y"); 
 $time = date("h:i:s A"); 
 
if(isset($_POST['addPayment'])) {
    extract($_POST); 
    $filename = date('dmYhisA').$_FILES['ref']['name'];
    
    $parts = explode('.', $filename);
    $extension = end($parts);
    
    if($extension=="jpg" || $extension=="JPG" || $extension=="jpeg" || $extension=="JPEG" || $extension=="png" || $extension=="PNG") {
        move_uploaded_file($_FILES['ref']['tmp_name'],"upload/$filename");
        $q = $con->query("INSERT INTO `payment_requests` set `name`='$name',`uid`='$uid',`amount`='$amount',`email`='$email',`thumbnail`='$filename',`date`='$date',`time`='$time' ");
        if($q) {
            echo "<script>location.href='./resp.php?success'</script>";
        } else {
            echo "<script>location.href='./resp.php?error'</script>";
        }
    } else {
        echo "<script>location.href='./resp.php?error'</script>";
    }
    
}

$uid = $_GET['uid'];
$name = $_GET['name'];
$email = $_GET['email'];
$amount = $_GET['amount'];

$payment_link = "upi://pay?pa=webdevkanai@axl&pn=DEV+SEC+IT&mc=&tid=&tr=$uid&tn=$uid&am=$amount.00&cu=INR";
$qr = "https://chart.googleapis.com/chart?cht=qr&chs=200x200&chl=" . urlencode($payment_link);
?>
<form action method="POST" enctype="multipart/form-data"> 
    
   <center>
       <h1>Recharge wallet!</h1> 
       
        <img src="<?= $qr ?>" />
        <input type='' value='webdevkanai@axl'>
        <br>
        <br>
        <p>Upload screenshot (after payment) </p>
        <input type="file" name="ref" accept="image/*" /> 
        <input type='hidden' value="<?= $uid ?>" name="uid" />
        <input type='hidden' value="<?= $name ?>" name="name" />
        <input type='hidden' value="<?= $email ?>" name="email" />
        <input type='hidden' value="<?= $amount ?>" name="amount" />
        <br> 
        <br> 
        <button name="addPayment">Submit Request</button>
        <br><br> 
        <small>If in 24 hours your amount is not credited in your account, please contact us on given email or contact us button</small>
   </center>
</form>
<style>
    input {
    padding: 10px 15px;
    width: 90%;
    border-radius: 5px;
    border: 1px solid #000;
}
button {
    width: 90%; 
    padding: 10px 45px;
    background: #000;
    color: white;
    border: 1px solid; 
    border-radius: 5px;
    cursor: pointer
}
</style>
