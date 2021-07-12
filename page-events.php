<?php



get_header();
?>
<div class="container">

  
   <?php 
            $terms = get_terms(
        array(
        'taxonomy'   => 'offline_event_cat',
        'parent' => 0,
        'hide_empty' => false,
        'posts_per_page'      => 8,
        )
            ); ?>

    <div class="row">
   
     <?php // Check if any term exists
if ( ! empty( $terms ) && is_array( $terms ) ) {
    // Run a loop and print them all
    foreach ( $terms as $term ) { ?>
     
         
          <div class="col-md-4 col-lg-4 col-xs-12 col-sm-12">
              <div class="product-item">
              <a href="<?php echo get_bloginfo('wpurl') . '/' . $term->taxonomy . '/' . $term->slug; ?>">
              

             <?php 
            $current_term = get_queried_object(); 

            $image = get_field('category_image', $term );
             ?>
                 <div class="event-cat-img">
                        <img src="<?php echo $image; ?>" alt="<?php echo $term->name; ?> image" class="img-fluid">
                 </div>
               
            <div class="event-cat-title">
                <h4><?php echo $term->name; ?></h4>
            </div>
             
              </a>
              </div> 
              </div>
              
        <?php
    }
}
        
        ?>   </div>
  
  
  
   
   
   
    
      
       </div>  
       
       
       
<?php
get_footer();
