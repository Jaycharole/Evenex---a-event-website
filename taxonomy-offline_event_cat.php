<?php get_header(); ?>
<div class="header-page">
     <h2>EVENTS</h2>
</div>
<div class="container">
   <br>
    <div class="row">
    <?php    if ( have_posts() ) : 
    while ( have_posts() ) : the_post();  ?>
      <div class="col-md-4 col-lg-4 col-sm-12 col-xs-12">
        <a href="<?php the_permalink(); ?>">
          <div class="image-event">
              <?php the_post_thumbnail('large'); ?>
          </div>
          <div class="event-title">
              <?php the_title(); ?>
          </div></a>  
      </div>
      
   <?php  endwhile; 
endif; 
?>
    </div>
    <br>
</div>



<?php get_footer(); ?>