<?php



get_header();
?>
<div class="header-page">
     <h2>OFFLINE EVENT CATEGORIES</h2>
</div>
<div class="container">

<center>
 <div class="instruction">
    <p>Select on the below categories and select the event inside it</p>
</div>   
</center>

  
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
                 <div class="product-image">
                     <img src="<?php echo $image; ?>" alt="<?php echo $term->name; ?> image" class="img-fluid">
                 </div>
                  
            
             <h4><?php echo $term->name; ?></h4>
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
