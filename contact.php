<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>
<!doctype html>
<html>
<head>
<title>Student  Management System || Contact Us Page</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--bootstrap-->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!--coustom css-->
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<link href="css/custom.css" rel="stylesheet" type="text/css"/>
<!--script-->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- js -->
<script src="js/bootstrap.js"></script>
<!-- /js -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Open+Sans:300,300italic,400italic,400,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--/fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<!--script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
<!--/script-->
</head>
	<body>
<!--header-->
		<?php include_once('includes/header.php');?>
<!-- Top Navigation -->
<div class="banner banner5">
	<div class="container">
	<h2>Contact</h2>
	</div>
</div>
<!--header-->
		<!-- contact -->
		<div class="contact">
			<!-- container -->
			<div class="container">
				<!-- <div class="contact-info">
					<h3 class="c-text">Feel Free to Contact with Us!!!</h3>
					<p>Have questions or need assistance? Our team is here to help you. Reach out to us anytime!</p>
				</div> -->

				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">                        
						<h2 class="form-title">Get in Touch</h2>
						<p>We'd love to hear from you! Fill out the form below, and we'll get back to you as soon as possible.</p>
					</div>
				</div>
			</div>


		<div class="row">

          <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

		  <form id="contact-form" name="myForm" class="form" action="save_message.php" method="POST">
			<div class="form-group">
				<input type="text" class="form-control" id="name" name="name" placeholder="Your Name" required>
			</div>

			<div class="form-group">
				<input type="tel" class="form-control" id="mobile" name="mobile" placeholder="Your Phone No." required pattern="[0-9]{10,15}">
			</div>

			<div class="form-group">
				<input type="text" class="form-control" id="subject" name="subject" placeholder="Subject" required>
			</div>

			<div class="form-group">
				<textarea rows="6" name="message" class="form-control" id="message" placeholder="Your Message" required></textarea>
			</div>

			<div class="text-center margin-top-25">
				<button type="submit" name="submit" class="btn btn-mod btn-border btn-large">Send Message</button>
			</div>
		</form>


            
          </div><!-- End col -->

      </div><!-- End row -->
				
				<div class="row contact-grids text-center"> <!-- Row added for proper alignment -->
        <?php
        $sql = "SELECT * FROM tblpage WHERE PageType='contactus'";
        $query = $dbh->prepare($sql);
        $query->execute();
        $results = $query->fetchAll(PDO::FETCH_OBJ);

        if ($query->rowCount() > 0) {
            foreach ($results as $row) { ?>
                <div class="col-md-4 contact-grid">
                    <h3>Address :</h3>
                    <p><?php echo htmlentities($row->PageDescription); ?></p>
                </div>

                <div class="col-md-4 contact-grid">
                    <h3>Phones :</h3>
                    <p><b>Phone:</b> 
                        <a href="tel:+91<?php echo htmlentities(strip_tags($row->MobileNumber)); ?>">
                            +91 <?php echo htmlentities(strip_tags($row->MobileNumber)); ?>
                        </a>
                    </p>
                </div>

                <div class="col-md-4 contact-grid">
                    <h3>E-mail :</h3>
                    <p><?php echo htmlentities($row->Email); ?></p>
                </div>
        <?php }
        } ?>
    </div>

<!-- Add this CSS in your style file -->
<style>
    .contact-grid {
        padding: 20px;
        background: #f8f9fa; /* Light background for better visibility */
        border-radius: 8px;
        min-height: 180px; /* Ensure equal height */
    }
    .contact-grid h3 {
        font-size: 18px;
        margin-bottom: 10px;
        font-weight: bold;
    }
    .contact-grid p {
        font-size: 16px;
        color: #333;
    }
    .contact-grids a {
        color: #007bff; /* Bootstrap primary color */
        text-decoration: none;
        font-weight: bold;
    }
    .contact-grids a:hover {
        text-decoration: underline;
    }
</style>
			</div>
			<!-- //container -->
		</div>
		<!-- //contact -->
<?php include_once('includes/footer.php');?>
<!--/copy-rights-->
	</body>
</html>
