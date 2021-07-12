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
		    <h2 class="heading-text" style="margin-bottom: 50px;">REQUEST CALL BACK IN 20 MINUTES</h2>
		
<div class="row">
<div class="col-md-2 col-lg-2 col-sm-12 col-xs-12"></div>
<div class="col-md-8 col-lg-8 col-sm-12 col-xs-12"><center>
 <div class="form-group">
    <input type="text" class="form-control" id="service" name="service-name" placeholder="Service Name*" value="<?php print the_terms( $post->ID, 'garage_category' , ' ' ); ?>" required readonly>
    </div>
 <?php echo do_shortcode('[contact-form-7 id="239" title="Quotes Online Form"]'); ?></center></div>
<div class="col-md-2 col-lg-2 col-sm-12 col-xs-12"></div>
</div>
		</div>

    </div>
</div>	
<?php get_footer(); ?>
