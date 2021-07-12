<?php
get_header();
?>





<div class="header-page">
     <h2>Register as Organization</h2>
</div>

<br>
<br>
<div class="container">



<div class="org_reg">
 <div class="org-data">
     <h2>RECENT REGISTERED ORGANIZERS</h2>
      <table class="styled-table">
    <thead>
        <tr>
            <th>ID No</th>
            <th>Name of the organizer</th>
        </tr>
    </thead>
     </table>
     <?php 
$organizer_list = $wpdb->get_results( "SELECT * FROM wp_org_reg ORDER BY id DESC LIMIT 10",ARRAY_A );
            $count = 0; 
            $form_text = 'ORG - ';
    
    ?>
    
        <div class="container">
       <?php foreach($organizer_list as $organizers){ $count++; 
            ?>
      <table>     
    <tbody>
        <tr>
            <td><?php echo $form_text . $organizers['id']; ?></td>
            <td><?php echo $organizers['first_name']; ?> &nbsp; <?php echo $organizers['last_name']; ?></td>
        </tr>

        <!-- and so on... -->
    </tbody>
</table>
            <!--<div class="row">
                <div class="col-md-4 col-lg-4 col-sm-12 col-xs-12">Form No. <?php echo $form_text . $organizers['id']; ?> </div>
                <div class="col-md-4 col-lg-4 col-sm-12 col-xs-12">Name : <?php echo $organizers['first_name']; ?></div>
                <div class="col-md-4 col-lg-4 col-sm-12 col-xs-12">Last Name : <?php echo $organizers['last_name']; ?></div>
            </div>-->
           
<?php } ?>
 </div>
    </div>
 <hr>
 
 
 
 <br>
 
 <div class="org-data">
     <h2>RECENT REGISTERED USERS</h2>
     <table class="styled-table">
    <thead>
        <tr>
            <th>ID No</th>
            <th>Name of the organizer</th>
        </tr>
    </thead>
     </table>
     <?php 
$user_list = $wpdb->get_results( "SELECT * FROM wp_user_reg ORDER BY id DESC LIMIT 10",ARRAY_A );
            $count = 0; 
            $form_text = 'USER - ';
    
    ?>
        <div class="container">
       <?php foreach($user_list as $users){ $count++; 
            ?>
            
    <table>
    <tbody>
        <tr>
            <td><?php echo $form_text . $users['id']; ?></td>
            <td><?php echo $users['user_first_name']; ?> <?php echo $users['user_last_name']; ?></td>
        </tr>

        <!-- and so on... -->
    </tbody>
</table> 
           <!--
            <div class="row">
                <div class="col-md-4 col-lg-4 col-sm-12 col-xs-12">Form No. <?php echo $form_text . $users['id']; ?> </div>
                <div class="col-md-4 col-lg-4 col-sm-12 col-xs-12">Name : <?php echo $users['user_first_name']; ?></div>
                <div class="col-md-4 col-lg-4 col-sm-12 col-xs-12">Last Name : <?php echo $users['user_last_name']; ?></div>
            </div> -->
           
<?php } ?>
 </div>
</div>
    </div>
	
<br>





<?php
get_footer();
