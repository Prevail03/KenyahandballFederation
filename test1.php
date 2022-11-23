<html>
<body>
<?php  $fname=$_POST["fname"]; ?>
<?php  $lname=$_POST["lname"]; ?>
<?php  $nambari=$_POST["phonenumber"]; ?>
<?php  $kiwango=$_POST["amount"];

?>


<?php
date_default_timezone_set('Africa/Nairobi');
  $PhoneNumber=$nambari;
  $Value= $kiwango;
  # access token
  $consumerKey = 'fyWTb78GgjYU7QnTnSKOBnG6gmSXN4HP'; //Fill with your app Consumer Key
  $consumerSecret = 'h5wu7QQUI6zrwlls'; // Fill with your app Secret

  # define the variales
  # provide the following details, this part is found on your test credentials on the developer account
  $BusinessShortCode = '174379';//Till
  $Passkey = 'bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919';  
  $PartyA = $PhoneNumber; // This is your phone number, 
  $AccountReference = 'Kenya Handball Federation';//Account No
  $TransactionDesc = 'Support';
  $Amount = $Value;
 
  # Get the timestamp, format YYYYmmddhms -> 20181004151020
  $Timestamp = date('YmdHis');    
  
  # Get the base64 encoded string -> $password. The passkey is the M-PESA Public Key
  $Password = base64_encode($BusinessShortCode.$Passkey.$Timestamp);

  # header for access token
  $headers = ['Content-Type:application/json; charset=utf8'];

    # M-PESA endpoint urls
  $access_token_url = 'https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials';
  $initiate_url = 'https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest';

  # callback url
  $CallBackURL = 'https://mydomain.com/path';  

  $curl = curl_init($access_token_url);
  curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
  curl_setopt($curl, CURLOPT_HEADER, FALSE);
  curl_setopt($curl, CURLOPT_USERPWD, $consumerKey.':'.$consumerSecret);
  $result = curl_exec($curl);
  $status = curl_getinfo($curl, CURLINFO_HTTP_CODE);
  $result = json_decode($result);
  $access_token = $result->access_token;  
  curl_close($curl);

  # header for stk push
  $stkheader = ['Content-Type:application/json','Authorization:Bearer '.$access_token];

  # initiating the transaction
  $curl = curl_init();
  curl_setopt($curl, CURLOPT_URL, $initiate_url);
  curl_setopt($curl, CURLOPT_HTTPHEADER, $stkheader); //setting custom header

  $curl_post_data = array(
    //Fill in the request parameters with valid values
    'BusinessShortCode' => $BusinessShortCode,
    'Password' => $Password,
    'Timestamp' => $Timestamp,
    'TransactionType' => 'CustomerPayBillOnline',
    'Amount' => $Amount,
    'PartyA' => $PartyA,
    'PartyB' => $BusinessShortCode,
    'PhoneNumber' => $PartyA,
    'CallBackURL' => $CallBackURL,
    'AccountReference' => $AccountReference,
    'TransactionDesc' => $TransactionDesc
  );

  $data_string = json_encode($curl_post_data);
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
  curl_setopt($curl, CURLOPT_POST, true);
  curl_setopt($curl, CURLOPT_POSTFIELDS, $data_string);
  $curl_response = curl_exec($curl);

  $_SESSION['success'] = 'Message sent .';
  header('location: support.php');
 
 $db = mysqli_connect("localhost", "root", "", "kenyahandball");

$msg = "";
if (isset($_POST['submit'])) {
  
 
  $fname = mysqli_real_escape_string($db, $_POST['fname']);
  $lname = mysqli_real_escape_string($db, $_POST['lname']);
  $phone_number=mysqli_real_escape_string($db, $_POST['phonenumber']);
  $amount=mysqli_real_escape_string($db, $_POST['amount']);
  $nambari=$_POST['phonenumber'];
  


  $sql = "INSERT INTO transaction (fname, lname, phonenumber, amount,response) VALUES ('$fname', '$lname', '$phone_number','$amount','$curl_response')";
  mysqli_query($db, $sql);

}?>
</body>
</html>