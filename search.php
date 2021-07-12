<?php
/**
 * The template for displaying search results pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#search-result
 *
 * @package Meetup
 */

get_header();
?>

<div class="container">
    <header class="page-header">
				<h1 class="page-title">
					<?php
					/* translators: %s: search query. */
					printf( esc_html__( 'Search Results for: %s', 'meetup' ), '<span>' . get_search_query() . '</span>' );
					?>
				</h1>
			</header><!-- .page-header -->
			<div class="row">
			    
			
			<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
			
			<div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
			   <a href="<?php the_permalink(); ?>"> 
                <div class="post-img">
			        <img src="<?php the_post_thumbnail_url(); ?>" alt="<?php echo the_title(); ?>">
			    </div>
			    <div class="post-title">
			        <h2><?php the_title(); ?></h2>
			    </div>
			    <div class="post-excerpt">
			        <?php the_excerpt(); ?>
			    </div></a>
			</div>
			<?php endwhile;  ?>
               </div>
                
                <?php else: ?>
	<div class="no-result">
    <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
	    <h3>Sorry No Events Available at this moment!</h3>
	</div>
<?php endif; ?>
			
			
</div>
</div>


<?php
get_footer();