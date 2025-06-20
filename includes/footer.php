<!--footer-->
<div class="footer">
    <!-- container -->
    <div class="container">
      <div class="col-md-4 footer-right">
      <h3>Quick Links</h3>
        <ul style="list-style-type: none;">
          <li><a href="index.php">Home</a></li>
          <li><a href="about.php">About</a></li>
          <li><a href="contact.php">Contact</a></li>
          <li><a href="admin/login.php">Admin</a></li>
          <li><a href="user/login.php">Student</a></li>
        </ul>
       
      </div>
      <div class="col-md-4 footer-middle">
        <?php
      $sql="SELECT * from tblpage where PageType='contactus'";
      $query = $dbh -> prepare($sql);
      $query->execute();
      $results=$query->fetchAll(PDO::FETCH_OBJ);

      $cnt=1;
      if($query->rowCount() > 0)
      {
      foreach($results as $row)
      {               ?>
        <h3>Address</h3>
        <p style="color:#fff">
        <?php  echo htmlentities($row->PageDescription);?></p>          
        <?php $cnt=$cnt+1;}} ?></div>
        <div class="col-md-4 footer-right">
          <h3>Contact Option</h3>
          <p style="color:#fff"><b>Phone:</b><a href="tel:+91 <?php  echo htmlentities($row->MobileNumber);?>">&nbsp; +91 <?php  echo htmlentities($row->MobileNumber);?></a></p>
          <p style="color:#fff"><b>Mail:</b><a href="mailto:<?php  echo htmlentities($row->Email);?>">&nbsp; <?php  echo htmlentities($row->Email);?></a></p>
        </div>
        <div class="clearfix"> </div> 
      </div>
    <!-- //container -->
  </div>
<!--/footer-->
<!--copy-rights-->
<div class="copyright">
    <!-- container -->
    <div class="container">
      <div class="copyright-left">
      <p>Student Management System </p>
      </div>

      <div class="clearfix"> </div>
      
    </div>
    <!-- //container -->
    <!---->
<script type="text/javascript">
    $(document).ready(function() {
        /*
        var defaults = {
        containerID: 'toTop', // fading element id
        containerHoverID: 'toTopHover', // fading element hover id
        scrollSpeed: 1200,
        easingType: 'linear' 
        };
        */
    $().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!----> 
  </div>
  <a href="https://api.whatsapp.com/send?phone=<?php  echo htmlentities($row->MobileNumber);?>" class="floata" target="_blank">
            <i class="fab fa-whatsapp my-floata"></i>
        </a>