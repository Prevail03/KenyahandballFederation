
<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<?php
  use PHPMailer\PHPMailer\PHPMailer;
  use PHPMailer\PHPMailer\Exception;

  $msg = "";
  if (isset($_POST['submit'])) {
    $fname = ($_POST['fname']);
    $lname = ($_POST['lname']);
    $senders_email = ($_POST['email']);
    $subject = ($_POST['subject']);
    $senders_message = ($_POST['message']);
    $email='prevamu03@gmail.com';
	$message = "<h2>Hello sir/ Mad </h2>
                <p>I hope this mail finds you well. This why I contacted you <strong>".$senders_message."</strong></p><br><br>
                <p>My Email Address: ".$senders_email."</p>";

    require 'vendor/autoload.php';

   $mail = new PHPMailer(true);                             
    //Server settings
    $mail->isSMTP();                                     
    $mail->Host = 'smtp.gmail.com';                      
    $mail->SMTPAuth = true;                               
    $mail->Username = 'prevamu03@gmail.com';     
    $mail->Password = 'xyvmkowmcjbyspol';                    
    $mail->SMTPOptions = array(
        'ssl' => array(
        'verify_peer' => false,
        'verify_peer_name' => false,
        'allow_self_signed' => true
        )
    );                         
    $mail->SMTPSecure = 'ssl';                           
    $mail->Port = 465;                                   

    $mail->setFrom('prevamu03@gmail.com', 'Kenya Handball Federation');
    
    //Recipients
    $mail->addAddress($email);              
    $mail->addReplyTo('prevamu03@gmail.com');
   
    //Content
    $mail->isHTML(true);                                  
    $mail->Subject = $subject;
    $mail->Body    = $message;

    $mail->send();
 echo "Mail has been sent successfully!";
   

    $_SESSION['success'] = 'Message sent .';
    header('location: contact.php');

        
}
    

?>
<html>
    <head>
        <title>Kenya Handball Federation | Contact</title>
        <link rel="stylesheet" type="text/css" href="cstyle.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        <?php include('includes/header.php');?>
        <div class="content-page">
        <div class="content">
<img src='khfn.jpg' alt='images/khflogo' class='rounded-circle' height='89'><br><br>
<h1><strong>KENYA HANDBALL FEDERATION</strong></h1>
        <h1 style="font-size: 50px; margin-top: 10px;">Contact Us Via:</h1>

		  <br>
		  <img src="images/cu.png" height="300" width="300"/>
			<div id="text">
				<ul type="none">     
					<li>
					<a href="https://web.facebook.com/kenyahandballfederation target="_blank"><img src="images/facebook.jpg" alt="facebook logo" style="border-radius: 50%;" target="_blank" height="50" width="50" >
					</a>Facebook - Kenyahandball Federation
				    </li>
					<li>
						<a href="https://twitter.com/handball_kenya"" target="_blank"><img src="images/twitter.jpg" alt="twitter logo" style="border-radius: 50%;"  height="50" width="50">
						</a>Twitter -@handball_kenya
					</li>
					<li>
						<a href="https://api.whatsapp.com/send?phone=254 701694441" target="_blank"><img src="images/wapp.jpg" alt="whatsapp" style="border-radius: 50%;" height="50" width="50">
						</a>WhatsApp - +254 701694441
					</li>
					<li>
						<a href="https://www.instagram.com/kenyahandball/" target="_blank"><img src="imForSite/instagram.png" alt="instagram logo" style="border-radius: 50%;" height="50" width="50">
						</a>Instagram - @kenyahandball
					</li>
					<li> 
						<a href="mailto: info@alwaysorganicafrica.co.ke" target="_blank"><img src="imForSite/email.jpg" alt="gmail logo" style='border-radius: 50%;' height="50" width="50" >
						</a>Email - info@kenyahandballfederation.org
					</li>
					<li>
						<div><img src="imForSite/location.png" alt="location icon"  style="border-radius: 50%;" height="50" width="50">
						<p>Langata  Rd, Nyayo Stadium</p>
						</div>
					</li>
				</ul>
				
			</div>
  
        </div>
	    </div>
		<form name="contactus" method="post" enctype="multipart/form-data">
		<div class="form-group m-b-20">
		<label for="exampleInputEmail1">First Name</label>
		<input type="text" class="form-control" id="posttitle" name="fname" placeholder="Jane" size="20"  required>
		</div>

		<div class="form-group m-b-16">
		<label >Last Name</label>
		<input type="text" class="form-control" id="posttitle" name="lname" placeholder="Doe" required>
		</div>


		<div class="form-group m-b-16">
		<label for="exampleInputEmail1">Email</label>
		<input type="text" class="form-control" id="posttitle" name="email" placeholder="janedoe@gmail.com" required>
		</div>

		<div class="form-group m-b-16">
		<label for="exampleInputEmail1">Subject</label>
		<input type="text" class="form-control" id="posttitle" name="subject" placeholder="Reason For Sending Message" required>
		</div>

		<div class="form-group m-b-16">
		<label for="exampleInputEmail1">Message</label>
		<input type="text" class="form-control" id="posttitle" name="message" placeholder="Message..." required>
		</div>

		<button type="submit" name="submit" class="btn btn-success waves-effect waves-light">Send</button>
			<button type="button" class="btn btn-danger waves-effect waves-light">Discard</button>
    	</form>
	</div>
	
  	<?php include 'includes/footer.php'; ?>
</div>


</body>
</html>