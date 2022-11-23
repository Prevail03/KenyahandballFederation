<?php
//     session_start();
//     $_SESSION['phonenumber'] = $_POST['phonenumber'];
  
// $_SESSION['amount']
//         = $_POST['amount'];
  

  $db = mysqli_connect("localhost", "root", "", "kenyahandball");

  $msg = "";
  if (isset($_POST['submit'])) {
    
   
    $fname = mysqli_real_escape_string($db, $_POST['fname']);
    $lname = mysqli_real_escape_string($db, $_POST['lname']);
    $phone_number=mysqli_real_escape_string($db, $_POST['phonenumber']);
    $amount=mysqli_real_escape_string($db, $_POST['amount']);
    $nambari=$_POST['phonenumber'];
    


    $sql = "INSERT INTO transaction (fname, lname, phonenumber, amount) VALUES ('$fname', '$lname', '$phone_number','$amount')";
    mysqli_query($db, $sql);

  }
?>
<html>
  <head>
    <title>KHF | Send Support</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" href="teamList.css">
    <link rel="stylesheet" href="bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap-theme.min.css">
    <link href="Admin/assets/css/core.css" rel="stylesheet" type="text/css" />
      <link href="Admin/assets/css/components.css" rel="stylesheet" type="text/css" />
      <link href="Admin/assets/css/icons.css" rel="stylesheet" type="text/css" />
      <link href="Admin/assets/css/pages.css" rel="stylesheet" type="text/css" />
      <link href="Admin/assets/css/menu.css" rel="stylesheet" type="text/css" />
      <link href="Admin/assets/css/responsive.css" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" href="../plugins/switchery/switchery.min.css">
      <script src="Admin/assets/js/modernizr.min.js"></script>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  </head>
  <body>
  <?php require_once('includes/header.php');?>
 
  
  <div class="content-page">
  <div class="content">
  <br><br>
  <br><br>
  
 <h2>Donate </h2>
 
  <form  method="POST"  action="test1.php" enctype="multipart/form-data">
    <input type="hidden" name="size" value="1000000">
<div class="form-group m-b-16">
<label for="exampleInputEmail1">First Name</label>
<input type="text" class="form-control" id="posttitle" name="fname" placeholder="Jane" required>
</div>

<div class="form-group m-b-16">
<label for="exampleInputEmail1">Last  Name</label>
<input type="text" class="form-control" id="posttitle" name="lname" placeholder="Doe" required>
</div>

<div class="form-group m-b-16">
<label for="exampleInputEmail1">Phone Number</label>
<input type="text" class="form-control" id="posttitle" name="phonenumber" placeholder="254701964441" required>
</div>
<div class="form-group m-b-16">
<label for="exampleInputEmail1">Amount</label>
<input type="text" class="form-control" id="posttitle" name="amount" placeholder="2000" required>
</div>


<button type="submit" name="submit" class="btn btn-success waves-effect waves-light">Support</button>
<button type="button" class="btn btn-danger waves-effect waves-light">Discard</button>
</div>

    <br><br>
    
    <br> <br><br>
  </form>
</div>
<?php require_once('includes/footer.php');?>
<?php
 date_default_timezone_set('Africa/Nairobi');
 $PhoneNumber=$nambari;
 $Value= $amount;
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
 print_r($curl_response);

 echo $curl_response;


?>
 

        <!-- jQuery  -->
        <!-- <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
        <script src="../plugins/switchery/switchery.min.js"></script>

       App js -->
        <!-- <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>  --> 
</body>
</html>
