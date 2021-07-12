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
 * @package Meetup
 */

get_header();
?>

 
 <div class="blog-page-wraper">
  
    <div class="container">
        
      
         <div class="row">
         
    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
  
         
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
                   <?php the_excerpt(); ?>  
             </div>
             <div class="blog-page-btn">
                <a href="<?php the_permalink(); ?>" class="btn-submit">Read more</a> 
             </div>
         </div>  
          <div class="page-nav">
           <?php wpbeginner_numeric_posts_nav(); ?>
          </div>
    <?php wp_reset_postdata(); ?>
     
        </div>
        <div class="col-lg-4  col-md-4 col-sm-12 col-xs-12 col-12">
        <?php
get_sidebar(); ?>    
        </div>
   
       <?php endwhile; ?>
       </div>
       
           <!-- pagination here -->
  
       
       <?php else : ?>
        
	<p><?php esc_html_e( 'Sorry, no posts matched your criteria.' ); ?></p>
<?php endif; ?> 
        
        

        </div>
    </div>


<?php
get_footer();
