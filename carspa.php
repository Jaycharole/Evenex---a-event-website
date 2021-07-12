 <?php require get_template_directory() . '/header-custom.php'; ?>
 
 <div class="single-page section-area">
        <div class="container">

<h2 class="heading-text-estores-head">SHOP</h2>
        
 <!-- Car Area Starts -->        
        
        <hr>
        <h2 class="heading-text-estores">CAR SPA</h2>
        <hr>
        
                <?php 
// the query
$the_query = new WP_Query( array( 'post_type' => 'car_spa',
                                 'posts_per_page' => 500
                                ) );        ?>
 
<?php if ( $the_query->have_posts() ) : ?>
        <div class="row">
   <!-- the loop -->
    <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
      <div class="col-md-4 col-lg-4 col-xs-12 col-sm-12">
        
         <div class="estore-item">
            <div class="estore-img">
                <?php the_post_thumbnail('thumbnail'); ?>
            </div>
             <div class="estore-title">
                 <?php the_title(); ?>
             </div>
            <div class="estore-cut-cover">
            <div class="estore-btn">
                <a href="<?php the_permalink(); ?>"><button type="button" class="btn btn-primary">View Details</button></a>
             </div>
            </div>
             
         </div>
         
         
      </div>
    <?php endwhile; ?>
    </div>
     <!-- Car Area Ends --> 
     <!-- pagination here -->
 
    <?php wp_reset_postdata(); ?>
 
<?php else : ?>
    <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
<?php endif; ?>
        
     </div>
</div>

<?php get_footer(); ?>