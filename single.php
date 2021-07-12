<?php


get_header();
?>

 <div class="blog-page-wraper">
    <div class="container">    
         <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 col-12">
        <div class="blog-page-box">
             <div class="blog-page-title">
                <h2><?php the_title(); ?></h2> 
                             <div class="blog-post-date">
        <?php the_time( 'F jS, Y' ); ?> / By <?php the_author_posts_link(); ?> /

             </div>
             </div>

             
             <div class="blog-page-image">
                     <img src="<?php echo the_post_thumbnail_url('large'); ?>" alt="<?php echo the_title(); ?>" class="img-fluid">
             </div>
             <div class="blog-page-content">
                   <?php the_content(); ?>  
             </div>
             
             
             
             
         </div>    
    </div> 
            
    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 col-12">
       
<?php
get_sidebar(); ?> 

    </div>             
             </div> 
             </div> 
             </div> 


<?php
get_sidebar();
get_footer();
 
