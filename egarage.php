<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package egarage_biz
 */

?>

<?php require get_template_directory() . '/header-custom.php'; ?>
<div class="garage-list-bg">
   <div class="section-area-garage">
     
     <div>
        <div class="garage-location-name-area">
         </div>
         
         <div class="container">
              <div class="row">
                  <div class="col-md-3 col-lg-3 col-xs-12 col-sm-12"></div>
                  <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
                      <h2 class="garage-location-name" ><i class="fa fa-map-marker" aria-hidden="true"></i><?php print the_terms( $post->ID, 'garage_category' , ' ' ); ?></h2>
                  </div>
                  <div class="col-md-3 col-lg-3 col-xs-12 col-sm-12"></div>
              </div>
               
           </div>
     </div>

    
        <div class="container">
            <div class="row">
            <div class="col-12">
                <div class="discount-area">
          <h2>Get offers from quality approved garages in your city.</h2> 
        </div>
            </div>
        </div>
        
        
        

                  <?php 
// the query
$the_query = new WP_Query( array( 'post_type' => 'car-scanning',
                                 'posts_per_page' => 500
                                ) );        ?>
 
<?php if ( $the_query->have_posts() ) : ?>
        <div class="row">
        <!-- the loop -->
    <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
       <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 wow fadeInLeft">
        <div class="garage-lists">
                  <div class="row">
                      <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
          <div class="garage-content">
            <a href="<?php the_permalink(); ?>"><h3 class="garage-name"><?php the_title(); ?></h3></a>
             <div class="row">
                
                 <div class="col-md-3 col-lg-3 col-sm-3 col-xs-3 content-img">
                     <a href="<?php the_permalink(); ?>"> <?php the_post_thumbnail('full'); ?></a>
                 </div>
                 <div class="col-md-9 col-lg-9 col-sm-9 col-xs-9 g-details">
                 <div class="garage-details">
                     <i class="fa fa-map-marker" aria-hidden="true"></i> <?php the_field('enter_miles'); ?>
                     <div class="garage-address">
                         <?php the_field('enter_address'); ?>
                     </div>
                 </div>
                 </div>
             </div>
              
            
          </div>
           
       </div>
       <div class="col-md-3 col-lg-3 col-sm-12 col-xs-12">
       <div class="garage-rating-area">
          
<style>
.fa-star {
  color: #efefef;
  -webkit-text-stroke: 1px #111;
  
}
.ratings {
  color: #111;
}
</style>
           
           <?php 
  $ratingstar = get_field('ratings');
 ?>
   <span class="fa fa-star <?php if ($ratingstar >= 1) { echo 'ratings';}?>"></span>
   <span class="fa fa-star <?php if ($ratingstar >= 2) { echo 'ratings';}?>"></span>
   <span class="fa fa-star <?php if ($ratingstar >= 3) { echo 'ratings';}?>"></span>
   <span class="fa fa-star <?php if ($ratingstar >= 4) { echo 'ratings';}?>"></span>
   <span class="fa fa-star <?php if ($ratingstar == 5) { echo 'ratings';}?>"></span>
      <?php the_field('ratings'); ?>.0
       </div>
       </div>
       
       <div class="col-md-3 col-lg-3 col-sm-12 col-xs-12">
       <div class="garage-quote-area">
           <button class="btn btn-primary" href="#myModal-<? the_ID(); ?>"  data-toggle="modal">GET QUOTES ONLINE</button>
       </div>
       
       </div>
           </div>
                  </div>
        <div class="modal fade" id="myModal-<? the_ID(); ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLabel"><?php the_title(); ?></h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
      
      <div class="row">
      <div class="col-sm-12 col-md-12 col-lg-12">
        <div class="row">
        
          <div class="col-md-12 col-lg-12 col-sm-6">
           <div class="form-group">

    <input type="text" class="form-control" id="service" name="service-name" placeholder="Service Name*" value="<?php the_title(); ?>" required readonly>
</div>
            <?php echo do_shortcode('[contact-form-7 id="239" title="Quotes Online Form"]'); ?>
         
       
        
          </div>  
        </div>
      </div>
          </div>
          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
          </div>
       </div>
       
		<?php endwhile; // End of the loop.
        ?>

        <?php wp_reset_postdata(); ?>
 
<?php else : ?>
    <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
<?php endif; ?>

      </div>
       
       
     </div>
        
        </div>
        
        
      
  
    </div>

   

		

		
<?php get_footer(); ?>
