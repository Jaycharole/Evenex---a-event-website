<?php


get_header();
?>
<div class="header-page">
     <h2>EVENT NAME: <b><?php the_title(); ?></b></h2>
</div>



	<div class="container">  <!--Container start---->
	    <div class="row">
	        <div class="col-md-8 col-lg-8 col-sm-12 col-xs-12"> <!--start of column--->
	        <div class="single-left-area">
            
            <?php if( get_field('event_img') ): ?>
        <img class="event-image" src="<?php the_field('event_img'); ?>" />
        <?php endif; ?>
	            
	            <div class="single-content-area">
               <!-- Event description starts here-->
                  <div class="sub-title">
                   <h3>Description:</h3>
                    </div>
	                <?php the_content(); 
                    
                 
                    
                    ?>
	                
	                
	            </div> <!--Event Description end here -->
	            
	            <!--Speaker section starts here -->
	            <div class="speaker-area">
                    <div class="sub-title">
                   <h3>Speaker:</h3>
                    </div>
	                <div class="row">
	                    <div class="col-md-4 col-lg-4 col-xs-12 col-sm-12">
                        <div class="speaker-item">
                        <div class="speaker-img">
                           <img src="<?php echo the_field('image_speaker_1'); ?>" alt="<?php echo the_title(); ?>" />
                        </div>    
	                <div class="speaker-name">
	                    <h4><?php the_field('event_speaker_name_1'); ?></h4>
	                </div>
                        </div>
	                    </div>
	                    
	                    <div class="col-md-4 col-lg-4 col-xs-12 col-sm-12">
                        <div class="speaker-item">
                        <div class="speaker-img">
                           <img src="<?php echo the_field('image_speaker_2'); ?>" alt="<?php echo the_title(); ?>" />
                        </div>    
	                <div class="speaker-name">
	                    <h4><?php the_field('event_speaker_name_2'); ?></h4>
	                </div>
                        </div>
	                    </div>
	                    
	                    <div class="col-md-4 col-lg-4 col-xs-12 col-sm-12">
                        <div class="speaker-item">
                        <div class="speaker-img">
                           <img src="<?php echo the_field('image_speaker_3'); ?>" alt="<?php echo the_title(); ?>" />
                        </div>    
	                <div class="speaker-name">
	                    <h4><?php the_field('event_speaker_name_3'); ?></h4>
	                </div>
                        </div>
	                    </div>
	                    
	                    
	                </div>
	            </div>
	            <!--Speaker section ends here-->
	            <div class="brocheure">
                <div class="sub-title">
                   <h3>Brocheure for the event:</h3>
                    </div>
                    <div class="brocheure-img">
                          <iframe src="<?php the_field('Brocheure'); ?>" style="width:600px; height:500px;" frameborder="0"></iframe>
                    </div>
	               <?php if( get_field('Brocheure') ): ?>
                    
                     <center>
                        <a href="<?php echo the_field('Brocheure'); ?>"><button class="link-button">Click here to download brocheure></button></a> 
                     </center>
                   <?php endif; ?>
	            </div>
	            
	            <!--Map area starts here -->
	            <div class="map-area">
                <div class="sub-title">
                   <h3>Location:</h3>
                    </div>
                    <div class="map-img">
                         <?php echo the_field('map'); ?>
                    </div>
	               

	            </div> <!--Map area ends here-->
	            
	            <!--Gallery starts here -->
	            <div class="gallery">
                <div class="sub-title">
                   <h3>Gallery:</h3>
                    </div>
	                <?php 

$gallery = get_field( 'gallery' ); // get the gallery object ?>
<div class="row">
<?php foreach( $gallery as $img ) { // for each item in the gallery object, build a gallery thumbnail ?>
 <div class="col-md-4 col-lg-4 col-sm-12 col-xs-12">
      <a href="<?php echo $img['url']; ?>" class="gallery-image" data-lightbox="gallery" data-title="<?php echo $img['title']; ?>">
  <img src="<?php echo $img['sizes']['large']; ?>" class="gallery-height">
  </a>
 </div>
 
<?php }
echo '</div>';
?></div>
	            </div> <!-- Gallery starts here-->
	      
	       
	                            
	      
	        </div>
	        
	       
	       <div class="col-md-4 col-lg-4 col-sm-12 col-xs-12 plr9">
           <div class="single-right-area">
           <div class="sub-title">
                   <h3>Short description:</h3>
           </div>  
           <p><?php the_field('short_deatils'); ?></p>
           
           <div class="sub-title">
                   <h3>Mode of event:</h3>
           </div>
           <p><?php the_field('event_type'); ?></p>
           
           <div class="sub-title">
                   <h3>Organizer:</h3>
           </div>
           <p><?php the_field('organizer'); ?></p>
           
           <div class="sub-title">
                   <h3>Email of organizer:</h3>
           </div>
           <p><?php the_field('email_org'); ?></p>
           
           <div class="sub-title">
                   <h3>Event start date:</h3>
           </div>
           <p><?php the_field('start_date_time'); ?></p>
           
           <div class="sub-title">
                   <h3>Event end date:</h3>
           </div>
           <p><?php the_field('end_date_time'); ?></p>
           
           <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
  Register for the event
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Register for event</h5>
        <div  class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </div>
      </div>
      <div class="modal-body">
      <div class="comment-area">
    	    <?php
			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif; ?>
    	</div>
      </div>
      
    </div>
  </div>
</div>
           
          <!-- <div class="sub-title">
                   <h3>Add to calender:</h3>
           </div>
           <div title="Add to Calendar" class="addeventatc">
               Add to Calendar
              <span class="start"><?php the_field('start_date_time'); ?></span>
              <span class="end"><?php the_field('end_date_time'); ?></span>
              <span class="title"><?php the_title(); ?></span>
              <span class="description"><?php the_content(); ?></span>
          </div>-->
        </div> 
        </div>
	                   
        </div> <!---End of column--->
        
           
        </div>
        
        <div class="container">
        <div class="sub-title">
                  <center><h3>Frequently asked questions:</h3></center> 
 </div>        
 <div id="accordion">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
          <span class="plus">+&nbsp;</span>&nbsp;&nbsp;<?php the_field('faq-1_question'); ?>
        </button>
      </h5>
    </div>

    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
      <div class="card-body">
        <?php the_field('faq-1_answer'); ?>
      </div>
    </div>
  </div>
  
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
         <span class="plus">+&nbsp;</span>&nbsp;&nbsp;<?php the_field('faq-2_question'); ?>
        </button>
      </h5>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
      <div class="card-body">
        <?php the_field('faq-2_answer'); ?>
      </div>
    </div>
  </div>
  
  <div class="card">
    <div class="card-header" id="headingThree">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
          <span class="plus">+&nbsp;</span>&nbsp;&nbsp;<?php the_field('faq-3_question'); ?>
        </button>
      </h5>
    </div>

    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
      <div class="card-body">
        <?php the_field('faq-3_answer'); ?>
      </div>
    </div>
  </div>
  
  <div class="card">
    <div class="card-header" id="headingFour">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
         <span class="plus">+&nbsp;</span>&nbsp;&nbsp;<?php the_field('faq-4_question'); ?>
        </button>
      </h5>
    </div>
    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
      <div class="card-body">
        <?php the_field('faq-4_answer'); ?>
      </div>
    </div>
  </div>
  
  <div class="card">
    <div class="card-header" id="headingFive">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
          <span class="plus">+&nbsp;</span>&nbsp;&nbsp;<?php the_field('faq-5_question'); ?>
        </button>
      </h5>
    </div>
    <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
      <div class="card-body">
        <?php the_field('faq-5_answer'); ?>
      </div>
    </div>
  </div>
</div>
        </div>
        <br><br>
	    <center>
	           <div class="social">
	           <div class="sub-title">
                   <h3>Follow on Social Media:</h3>
           </div> 
           <div class="social-icons">
             
              <a href="<?php echo the_field('tweeter'); ?>" class="twitter"><i class="fa fa-twitter"></i></a>
              <a href="<?php echo the_field('facebook'); ?>" class="facebook"><i class="fa fa-facebook"></i></a>
              <a href="<?php echo the_field('instagram'); ?>" class="instagram"><i class="fa fa-instagram"></i></a>
              <a href="<?php echo the_field('linkedin'); ?>" class="linkedin"><i class="fa fa-linkedin"></i></a>
           </div>   
	       </div>
	       </center>
        <br>
</div> <!---Container end--->
    
          
     
<?php
get_footer();