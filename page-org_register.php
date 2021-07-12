<?php
get_header();
?>



<?php
 error_reporting(0);
if (isset($_POST['submit'])) {

// to, from, subject, message body, attachment filename, etc.
        $to = "jaycharole@gmail.com";
        $from = $_POST['org_email'];
        $student_surname = $_POST['last_name'];
        $student_name = $_POST['first_name'];
        $phone = $_POST['org_phone_no'];
        $form_no = $_GET['id'];
        $subject = "Website Admission Details";
$message = "<p><strong>From:</strong> $from</p> <p><strong>Phone No:</strong> $phone</p> <p><strong>Student Name:</strong> $student_surname '.'  $student_name </p> <p><strong>Form No. :</strong> $form_no </p>";

$headers = "From: " . $from . "\r\n";
$headers .= "Reply-To: ". $from . "\r\n";
$headers .= "MIME-Version: 1.0\r\n";
$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

$admin_from = 'admin@saharacomputer.in';
$c_headers = "From: " . $admin_from . "\r\n";
$c_headers .= "Reply-To: ". $admin_from . "\r\n";
$c_headers .= "MIME-Version: 1.0\r\n";
$c_headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

$body = '<html><body>';
$body .=  '<p>' . $message . '</p>';
$body .= '</body></html>';

// send message
if (mail($to, $subject, $body, $headers)) {
	$success = "Thanks $student_surname! '.' $student_name for requesting price. We will get in touch soon with you.";
	$c_body = "Thanks $student_surname! '.' $student_name for Submitting Form. Please Pay your fess in bank account which is present in our website and upload your receipt with FORM NO. : $form_no ";

	$c_subject = "Dr. A.P.J School Admission Form";

	mail($from, $c_subject, $c_body, $c_headers);
}
else{
	$fail = "Sorry! There is error please make sure you entered right details";
}

}
 ?>

<div class="header-page">
     <h2>Register as Organization</h2>
</div>

<br>
<br>
<div class="container">
<div class="org_reg">
 <form action="" id="add-org-form" method="post" >
     <div class="row">
         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="text" class="form-control" name="first_name" id="first_name" placeholder="First Name" required>
            </div>
          </div> 
          
         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="text" class="form-control" name="last_name" id="last_name" placeholder="Last Name" required>
            </div>
         </div>      
    </div>

  <div class="row">
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 plr5">
           <div class="form-group">
              <input type="text" class="form-control" name="org_name" id="org_name" placeholder="Name of the organization" required>
           </div>
          </div> 
      </div>       

<div class="row">
         <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
           <div class="form-group">
              <input type="text" class="form-control" name="org_city" id="org_city" placeholder="City" required>
           </div>
          </div> 
          
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
           <div class="form-group">
              <input type="text" class="form-control" name="org_state" id="org_state" placeholder="State" required>
           </div>
          </div> 
          
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
           <div class="form-group">
              <input type="text" class="form-control" name="org_country" id="org_country" placeholder="Country" required>
           </div>
          </div> 
      </div>  
      
  <div class="row">
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 plr5">
           <div class="form-group">
              <textarea class="form-control" name="org_address" id="org_address" rows="3" placeholder="Office address of organization" required></textarea>
           </div>
          </div> 
  </div>       

<div class="row">
         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="email" class="form-control" name="org_email" id="org_email" placeholder="Organization Email address" required>
            </div>
          </div> 
          
          <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
              <input type="number" class="form-control" name="org_phone_no" id="org_phone_no" placeholder="Phone number" required>
            </div>
        </div>   
          
          
              
    </div>

    <div class="row">
         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="text" class="form-control" name="org_domain" id="org_domain" placeholder="Organization Domain" required>
            </div>
          </div>  
          
              <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
              <input type="text" class="form-control" name="org_website_name" id="org_website_name" placeholder="Website URL" required>
            </div>
        </div>     
    </div>
    
     <!--<div class="row">
         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="password" class="form-control" name="org_passwd" id="org_passwd" placeholder="Enter Password" required>
            </div>
          </div> 
          
         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="password" class="form-control" name="org_conf_passwd" id="org_conf_passwd" placeholder="Confirm Password" required>
            </div>
         </div>       
    </div>-->


    <div class="col-md-12">
     <center><input type="submit" name="submit" class="btn btn-submit" value="Submit"></center>      
    </div>
    
</form>
</div>
    </div>
	
<br>



<?php if(isset($_POST['submit'])){  ?>
    
    <?php 

        $first_name = $_POST['first_name'];
        $last_name = $_POST['last_name'];
        $org_name = $_POST['org_name'];
        $org_city = $_POST['org_city'];
        $org_state = $_POST['org_state'];
        $org_country = $_POST['org_country'];
        $org_address = $_POST['org_address'];
        $org_email = $_POST['org_email'];
        $org_phone_no = $_POST['org_phone_no'];
        $org_domain = $_POST['org_domain'];
        $org_website_name = $_POST['org_website_name'];
        

    ?>
    
    <?php 
    global $wpdb;

$sql=$wpdb->insert("wp_org_reg", 
array("first_name"=>$first_name, 
      "last_name"=>$last_name, 
      "org_name"=>$org_name,  
      "org_city"=>$org_city, 
      "org_state"=>$org_state,
      "org_country"=>$org_country,
      "org_address"=>$org_address,
      "org_email"=>$org_email,
      "org_phone_no"=>$org_phone_no,
      "org_domain"=>$org_domain,
      "org_website_name"=>$org_website_name,
  ));  ?>
  
   <?php
     $sql = $wpdb->get_results( "SELECT * FROM wp_org_reg", ARRAY_A ); ?>
   <?php $student_id = $_GET['id']; ?>
   
   <! –– Wordpress Insert Data into database validation ––>
           <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
            <?php if($sql==true){ ?>
                    <script type="text/javascript">
            (function ($) {
       
                        console.log("The button got clicked")
                        Swal.fire(
                          'You have registered Successfully!',
                          'Please check your mail <br> for confirming your account <br> Thank you for registering <br>on our platform<br>',
                          'success',
                          
                        ).then(function() {
    window.location.href = "http://localhost/evenex/wp-login.php?action=register";
});
                
               
        
        })( jQuery );
                    </script>
                        <?php } else {
            echo "Data Not Inserted";
            }?>
            <! –– End of Wordpress Insert Data into database validation ––>

<?php }?>

<?php
get_footer();
