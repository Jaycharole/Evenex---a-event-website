<?php
get_header();
?>
<div class="header-page">
     <h2>Register as User</h2>
</div>
<br>
<br>
<div class="container">
<div class="user_reg">
 <form action="" id="add-org-form" method="post">
     <div class="row">
         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="text" class="form-control" name="user_first_name" id="user_first_name" placeholder="First Name" required>
            </div>
          </div> 
          
         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="text" class="form-control" name="user_last_name" id="user_last_name" placeholder="Last Name" required>
            </div>
         </div>      
    </div>

  <div class="row">
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 plr5">
           <div class="form-group">
              <input type="text" class="form-control" name="user_email" id="user_email" placeholder="Email address" required>
           </div>
          </div> 
      </div> 
      
<div class="row">
         <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
           <div class="form-group">
              <input type="text" class="form-control" name="user_city" id="user_city" placeholder="City" required>
           </div>
          </div> 
          
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
           <div class="form-group">
              <input type="text" class="form-control" name="user_state" id="user_state" placeholder="State" required>
           </div>
          </div> 
          
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
           <div class="form-group">
              <input type="text" class="form-control" name="user_country" id="user_country" placeholder="Country" required>
           </div>
          </div> 
      </div>          

  <div class="row">
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 plr5">
           <div class="form-group">
              <textarea class="form-control" name="user_address" id="user_address" rows="3" placeholder="Address" required></textarea>
           </div>
          </div> 
  </div>       

<div class="row">
         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
            <div class="radio-div">
               <strong>Gender:-</strong> <input type="radio" name="user_gender" value="Male" checked="checked" required> Male <input type="radio" name="user_gender" value="Female" required> Female
            
            </div>
          </div> 
          
          
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
            <div class="radio-div">
               <strong>Maratial Status:-</strong> <input type="radio" name="user_maratial_status" value="Single" checked="checked" required> Single <input type="radio" name="user_maratial_status" value="Married" required> Married
            </div>
        </div>       
    </div>

    <div class="row">
         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="text" class="form-control" name="user_contact_no" id="user_contact_no" placeholder="Contact Number" required>
            </div>
          </div>      
          
          <div class="col-lg-2 col-md-4 col-sm-2 col-xs-2 t1">
             What suits you:
         </div>
         
         <div class="col-lg-4 col-md-4 col-sm-10 col-xs-10 plr5">
            <div class="form-group">
      
               <select name="user_experience_level" id="user_experience_level" class="form-control course-dropdown" required >
                  <option value="Student" selected="selected">Student</option>
                  <option value="Fresher">Fresher</option>
                  <option value="Experienced">Experienced</option>	
                  <option value="Other">Other</option>	
               </select>
          </div>
          </div> 
    </div>
    
     <div class="row">
         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="password" class="form-control" name="user_passwd" id="user_passwd" placeholder="Enter Password" required>
            </div>
          </div> 
          
         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="password" class="form-control" name="user_conf_passwd" id="user_conf_passwd" placeholder="Confirm Password" required>
            </div>
         </div>       
    </div>


    <div class="col-md-12">
     <center><input type="submit" name="submit" class="btn btn-submit" value="Submit"></center>      
    </div>
    
</form>
</div>
    </div>
	
<br>


<?php if(isset($_POST['submit'])){  ?>
    
    <?php 

        $user_first_name = $_POST['user_first_name'];
        $user_last_name = $_POST['user_last_name'];
        $user_email = $_POST['user_email'];
        $user_city = $_POST['user_city'];
        $user_state = $_POST['user_state'];
        $user_country = $_POST['user_country'];
        $user_address= $_POST['user_address'];
        $user_gender = $_POST['user_gender'];
        $user_maratial_status = $_POST['user_maratial_status'];
        $user_contact_no = $_POST['user_contact_no'];
        $user_experience_level = $_POST['user_experience_level'];
        $user_passwd = $_POST['user_passwd'];
        $user_conf_passwd = $_POST['user_conf_passwd'];
    
    
    
    
    
    

    ?>
    
    <?php 
    global $wpdb;

$sql=$wpdb->insert("wp_user_reg", 
array("user_first_name"=>$user_first_name,
      "user_last_name"=>$user_last_name,
      "user_email"=>$user_email,
      "user_city"=>$user_city, 
      "user_state"=>$user_state,
      "user_country"=>$user_country,
      "user_address"=>$user_address,
      "user_gender"=>$user_gender,
      "user_maratial_status"=>$user_maratial_status,
      "user_contact_no"=>$user_contact_no,
      "user_experience_level"=>$user_experience_level,
      "user_passwd"=>$user_passwd,
      "user_conf_passwd"=>$user_conf_passwd,
      
       
      
  ));  ?>
  
   <?php
     $sql = $wpdb->get_results( "SELECT * FROM wp_user_reg", ARRAY_A ); ?>
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
                          
                        )   
               
        
        })( jQuery );
                    </script>
                        <?php } else {
            echo "Data Not Inserted";
            }?>
            <! –– End of Wordpress Insert Data into database validation ––>

<?php }?>

<?php
get_footer();
