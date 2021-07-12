<?php
/**
 * The header for our website.
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>


<div class="top-nav">
    <div class="container">
    <div class="row">
        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
         
          <div class="d-sm-none d-md-block d-none d-sm-block">
              <div class="left-area">
              <div class="top-email">
              <i class="fa fa-envelope" aria-hidden="true"></i>
            <a href="https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=contact@evenex.com" target="_blank">contact@evenex.com</a> 
           </div>
           <div class="top-phone">
               <i class="fa fa-phone" aria-hidden="true"></i>
           <a href="tel:9892968944">9892968944</a> 
           </div>
          </div>
              
          </div>
           
        </div>
    
        
        <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
            <div class="social-right">
                <div class="right-area">
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a>
            </div>
            </div>
        </div>
    </div>
	    
	    </div>
    </div>


    
    
<nav class="navbar navbar-expand-md navbar-light bg-light" role="navigation">
  <div class="container">
   <div class="row">    
   <div class="col-md-2 col-lg-2 col-sm-12 col-xs-12">
         <!-- Brand and toggle get grouped for better mobile display -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-controls="bs-example-navbar-collapse-1" aria-expanded="false" aria-label="<?php esc_attr_e( 'Toggle navigation', 'your-theme-slug' ); ?>">
        <span class="navbar-toggler-icon"></span>
    </button>
    
      <a class="navbar-brand" href="http://localhost/evenex/"><img class="logo" src="<?php echo get_template_directory_uri(); ?>/img/evenx-main-logo.png" alt="First slide"></a>
    
   </div>
   <div class="col-md-8 col-lg-8 col-sm-12 col-xs-12">
        <?php
        wp_nav_menu( array(
            'theme_location'    => 'primary',
            'depth'             => 2,
            'container'         => 'div',
            'container_class'   => 'collapse navbar-collapse',
            'container_id'      => 'bs-example-navbar-collapse-1',
            'menu_class'        => 'nav navbar-nav',
            'fallback_cb'       => 'WP_Bootstrap_Navwalker::fallback',
            'walker'            => new WP_Bootstrap_Navwalker(),
        ) );
        ?>
   </div>
   <div class="col-md-2 col-lg-2 col-sm-12 col-xs-12">
       <!--<button class="nav-button" href="https://getbootstrap.com/docs/4.0/components/buttons/">SIGN IN</button>-->
       
       <a class="btn btn-danger nav-button" href="http://localhost/evenex/wp-login.php" role="button">SIGN IN</a>
   </div>
   
   </div>
  
  
       
    </div>
    
    
</nav>
    