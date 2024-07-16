<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


<?php
$con = mysqli_connect("localhost","","",""); 

// header("Pragma: no-cache");
// header("Cache-Control: no-cache");
// header("Expires: 0");

// following files need to be included
require_once("config.php");
require_once("enc.php");

$paytmChecksum = "";
$paramList = array();
$isValidChecksum = "FALSE";

$paramList = $_POST;
$paytmChecksum = isset($_POST["CHECKSUMHASH"]) ? $_POST["CHECKSUMHASH"] : ""; //Sent by Paytm pg

//Verify all parameters received from Paytm pg to your application. Like MID received from paytm pg is same as your application�s MID, TXN_AMOUNT and ORDER_ID are same as what was sent by you to Paytm PG for initiating transaction etc.
$isValidChecksum = verifychecksum_e($paramList, PAYTM_MERCHANT_KEY, $paytmChecksum); //will return TRUE or FALSE string.
// echo "<pre>";

//  print_r($_REQUEST);
 
 $amount = $_REQUEST['TXNAMOUNT']; 
 $uid = $_REQUEST['uid']; 
 $oid = $_REQUEST['ORDERID']; 
 
 $u  = $con->query("SELECT * FROM `userdatas` WHERE `playerid`='$uid' "); 
 $user = $u->fetch_array(); 
 

$prevAmount = $user['totalcoin']; 
$totalAmount = $prevAmount+$amount;
$playBalance = $totalAmount+$user['wincoin'];
 
              
if($isValidChecksum == "TRUE") {
	// echo "<b>Checksum matched and following are the transaction details:</b>" . "<br/>";
	if ($_POST["STATUS"] == "TXN_SUCCESS") {
	    
	   
	   
	   $transaction_id =  $_POST['TXNID'];
	    $txn = $transaction_id;
	    $name = $user['username'];
	    $phone = $user['userphone'];
	     
	    $insertTrans = $con->query("INSERT INTO `transactions` SET `userid`='$uid',`order_id`='$oid',`amount`='$amount',
	                                `status`='Success',`trans_date`='".date("l jS F Y h:i:s A")."',`created_at`='".time()."',`txn_id`='$txn' "); 
        
              $updxx = $con->query("UPDATE `userdatas` SET `totalcoin`='$totalAmount', `playcoin`='$playBalance'  WHERE `playerid`='$uid' "); 
         
	   //$ch = curl_init(); 
    //     $url = str_replace(" ","+","https://devsecit.com/sender-sms?api=devsecit74J9YMugf3jQ&msg=$name has been orderd $title , phone-$phone&phone=6294575336");
    //     curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    //     curl_setopt($ch, CURLOPT_URL, $url);
    //     curl_setopt($ch, CURLOPT_HEADER, 0); 
    //     curl_exec($ch); 
    //     curl_close($ch);
        	    
	?>
        <body style="padding:0; margin:0">

		<div class="contX" style="height: 100vh;width: 100%; padding: 25px; margin: 0;background: #ffff; align-items: center; justify-content: center;text-align: center; display: flex; overflow: hidden;">
			<center> <img src="tick.png" style="height: 100px; width: auto;">
				<h1>Payment Success</h1>
				<small>Tap back button to get back game!</small>
		</div>

		<script type="text/javascript">
 
	setTimeout(
        function(){
            // window.location = "./success.php?tid=<?php echo $_POST['TXNID'];?>&name=<?= $name ?>" 
        	},
		    5000);
		</script>



<?php	}
	else {
	    
	    
	    $transaction_id =  $_POST['TXNID'];
	    $txn = $transaction_id;
	    $name = $user['username'];
	    $phone = $user['userphone'];
	     
	    $insertTrans = $con->query("INSERT INTO `transactions` SET `userid`='$uid',`order_id`='$oid',`amount`='$amount',
	                                `status`='Failed',`trans_date`='".date("l jS F Y h:i:s A")."',`created_at`='".time()."',`txn_id`='$txn' "); 
        
         
		echo "<h1>Dear $name! Transaction failed! Please try again...</h1>" . "<br/>";?>
		
			<style>
			    body {
			        background:red;
			        color:white;
			        height:100vh;
			        width:100%;
			        display:flex;
			        align-items:center;
			        justify-content:center;
			        text-align:center;
			    }
			</style>
		<script type="text/javascript">
		//	alert('Please wait 5 sec, it will auto reidrect');
	setTimeout(
        function(){
            // window.location = "./failed.php" 
        	},
		    5000);
		</script>
		
<?php }

/*
	if (isset($_POST) && count($_POST)>0 )
	{ 
	 	foreach($_POST as $paramName => $paramValue) {
				echo "<br/>" . $paramName . " = " . $paramValue;
		}
	}
	*/
	
	
 }
else {
	echo "<b>Checksum mismatched.</b>";
	//Process transaction as suspicious.
	
}

?>