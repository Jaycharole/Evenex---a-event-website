<?php
/**
 * Meetup functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package Meetup
 */

if ( ! defined( '_S_VERSION' ) ) {
	// Replace the version number of the theme on each release.
	define( '_S_VERSION', '1.0.0' );
}

if ( ! function_exists( 'meetup_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function meetup_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on Meetup, use a find and replace
		 * to change 'meetup' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'meetup', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus(
			array(
				'primary' => esc_html__( 'Primary', 'meetup' ),
			)
		);

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support(
			'html5',
			array(
				'search-form',
				'comment-form',
				'comment-list',
				'gallery',
				'caption',
				'style',
				'script',
			)
		);

		// Set up the WordPress core custom background feature.
		add_theme_support(
			'custom-background',
			apply_filters(
				'meetup_custom_background_args',
				array(
					'default-color' => 'ffffff',
					'default-image' => '',
				)
			)
		);

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support(
			'custom-logo',
			array(
				'height'      => 250,
				'width'       => 250,
				'flex-width'  => true,
				'flex-height' => true,
			)
		);
	}
endif;
add_action( 'after_setup_theme', 'meetup_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function meetup_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'meetup_content_width', 640 );
}
add_action( 'after_setup_theme', 'meetup_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function meetup_widgets_init() {
	register_sidebar(
		array(
			'name'          => esc_html__( 'Sidebar', 'meetup' ),
			'id'            => 'sidebar-1',
			'description'   => esc_html__( 'Add widgets here.', 'meetup' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);
}
add_action( 'widgets_init', 'meetup_widgets_init' );

/**Login**/

/**
 * Enqueue scripts and styles.
 */
function meetup_scripts() {
	wp_enqueue_style( 'meetup-style', get_stylesheet_uri(), array(), _S_VERSION );
	wp_style_add_data( 'meetup-style', 'rtl', 'replace' );
    
    wp_enqueue_style( 'bootstrap-css', get_template_directory_uri() . '/css/bootstrap.min.css');
    
    wp_enqueue_style( 'font-awesome-css', get_template_directory_uri() . '/css/font-awesome.min.css');
    
    wp_enqueue_script( 'bootstrap-js', get_template_directory_uri() . '/js/bootstrap.min.js', array('jquery'),true);
    
    wp_enqueue_script( 'bootstrap-bundle-js', get_template_directory_uri() . '/js/bootstrap.bundle.min.js', array('jquery'),true);
    
    wp_enqueue_script( 'atc-js', get_template_directory_uri() . '/js/atc.min.js', array('jquery'),true);

	wp_enqueue_script( 'meetup-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'meetup_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Bootstrap navwalker.
 */
require get_template_directory() . '/inc/class-wp-bootstrap-navwalker.php';
require get_template_directory() . '/TCPDF-main/tcpdf.php';
require get_template_directory() . '/page-createpdf.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

function wps_enqueue_fonts() {
    if (!is_admin()) {
        wp_register_style('font_poppins','https://fonts.googleapis.com/css2?family=Poppins', array(), null, 'all');
        
        wp_register_style('font_teko','https://fonts.googleapis.com/css2?family=Teko', array(), null, 'all');
        
        wp_register_style('font_roboto','https://fonts.googleapis.com/css2?family=Roboto', array(), null, 'all');
        
        wp_register_style('font_playfair','https://fonts.googleapis.com/css2?family=Playfair+Display', array(), null, 'all');
        
        wp_register_style('font_monseret','https://fonts.googleapis.com/css2?family=Montserrat', array(), null, 'all');
        
        wp_register_style('font_hind','https://fonts.googleapis.com/css2?family=Hind', array(), null, 'all');
        
        wp_register_style('font_ubuntu','https://fonts.googleapis.com/css2?family=Ubuntu', array(), null, 'all');
        
        wp_register_style('font_lato','https://fonts.googleapis.com/css2?family=Lato', array(), null, 'all');
        
        wp_register_style('font_rubik','https://fonts.googleapis.com/css2?family=Rubik', array(), null, 'all');
        
        wp_register_style('font_inter','https://fonts.googleapis.com/css2?family=Inter', array(), null, 'all');
        
        wp_register_style('font_archivo','https://fonts.googleapis.com/css2?family=Archivo', array(), null, 'all');
        
        wp_register_style('font_raleway','https://fonts.googleapis.com/css2?family=Raleway', array(), null, 'all');
    
        wp_enqueue_style('font_poppins');
        wp_enqueue_style('font_inter');
        wp_enqueue_style('font_ubuntu');
        wp_enqueue_style('font_lato');
        wp_enqueue_style('font_monseret');
        wp_enqueue_style('font_rubik');
        wp_enqueue_style('font_teko');
        wp_enqueue_style('font_hind');
        wp_enqueue_style('font_roboto');
        wp_enqueue_style('font_playfair');
        wp_enqueue_style('font_archivo');
        wp_enqueue_style('font_raleway');
    }
}
add_action('wp_enqueue_scripts', 'wps_enqueue_fonts');

function modify_logo() {
    $logo_style = '<style type="text/css">';
    $logo_style .= 'h1 a {background-image: url(' . get_template_directory_uri() . '/login/logo.png) !important;}';
    $logo_style .= '</style>';
    echo $logo_style;
}
add_action('login_head', 'modify_logo');

function custom_login_url() {
    return 'http://www.addwebsolution.com';
}
add_filter('login_headerurl', 'custom_login_url');

function custom_login_css() {
    wp_enqueue_style('login-styles', get_template_directory_uri() . '/login/custom_login.css');
}
add_action('login_enqueue_scripts', 'custom_login_css');

/* function wpb_remove_screen_options() { 
if(!current_user_can('manage_options')) {
return false;
}
return true; 
}
add_filter('screen_options_show_screen', 'wpb_remove_screen_options'); 


remove_action( 'admin_menu', 'cptui_plugin_menu' );

add_filter('acf/settings/show_admin', '__return_false');

function wpdocs_remove_menus(){
   
  
  remove_menu_page( 'plugins.php' );                //Plugins
  
   
}
add_action( 'admin_menu', 'wpdocs_remove_menus' );
?> */


function enable_comments_custom_post_type() {
 add_post_type_support( 'online_events', 'comments' );
}
add_action( 'init', 'enable_comments_custom_post_type', 11 );

function enable_comments_custom_post_type1() {
 add_post_type_support( 'offline_events', 'comments' );
}
add_action( 'init', 'enable_comments_custom_post_type1', 11 );

add_action( 'comment_post',	'save_comment_meta_data' );
function save_comment_meta_data( $comment_id ) {
    $city = wp_filter_kses( sanitize_text_field( $_POST['city'] ));
    add_comment_meta( $comment_id, 'city', $city );
}
add_filter( 'get_comment_author_link',	'attach_city_to_author' );

function attach_city_to_author( $author ) {
  $city = get_comment_meta( get_comment_ID(), 'city', true );
  if ( $city )
    $author .= " ($city)";
	return $author;
}

add_filter( 'comment_form_field_comment', 'so16856397_comment_form_field_comment', 10, 1 );
function so16856397_comment_form_field_comment( $field )
{
    return '';
}

//hook to the 'add_meta_boxes' action (PDF starts)
add_action('add_meta_boxes', 'change_meta_box_titles');
function change_meta_box_titles() {
    global $wp_meta_boxes; // array of defined meta boxes
    // cycle through the array, change the titles you want
    $wp_meta_boxes['post']['normal']['core']['hndle ui-sortable-handle']['title']= 'Team Member';
}



add_filter('comment_text', 'AddButton');

function AddButton($content){
    
    $my_id = get_comment_ID ();
    $comment_id_7 = get_comment( $my_id ); 
    $comment_post_id = $comment_id_7->comment_post_ID ;
    
    $comment_id = get_comment_ID ();
    $comment_text = get_comment_text(); 

    $report_button = "<form action='http://localhost/evenex/createpdf.php' method='get'>";
    $report_button .= "<button type='submit' name='attendees' value='$comment_post_id' style='background-color: orange; color: black';> Export PDF </button>";
    $report_button .= "</form>";
    $report_button .= "</br>";

    $new_content = $report_button;
    $content = $content . $new_content;
    return $content;
}

add_filter("comment_form_after_fields","additional_fields");

function additional_fields($result){
    return $result . " <span>(Welcome to India)</span>";
}



/**
 * Pagination Starts Here.
 */
function wpbeginner_numeric_posts_nav() {
 
    if( is_singular() )
        return;
 
    global $wp_query;
 
    /** Stop execution if there's only 1 page */
    if( $wp_query->max_num_pages <= 1 )
        return;
 
    $paged = get_query_var( 'paged' ) ? absint( get_query_var( 'paged' ) ) : 1;
    $max   = intval( $wp_query->max_num_pages );
 
    /** Add current page to the array */
    if ( $paged >= 1 )
        $links[] = $paged;
 
    /** Add the pages around the current page to the array */
    if ( $paged >= 3 ) {
        $links[] = $paged - 1;
        $links[] = $paged - 2;
    }
 
    if ( ( $paged + 2 ) <= $max ) {
        $links[] = $paged + 2;
        $links[] = $paged + 1;
    }
 
    echo '<div class="navigation"><ul>' . "\n";
 
    /** Previous Post Link */
    if ( get_previous_posts_link() )
        printf( '<li>%s</li>' . "\n", get_previous_posts_link() );
 
    /** Link to first page, plus ellipses if necessary */
    if ( ! in_array( 1, $links ) ) {
        $class = 1 == $paged ? ' class="active"' : '';
 
        printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( 1 ) ), '1' );
 
        if ( ! in_array( 2, $links ) )
            echo '<li>…</li>';
    }
 
    /** Link to current page, plus 2 pages in either direction if necessary */
    sort( $links );
    foreach ( (array) $links as $link ) {
        $class = $paged == $link ? ' class="active"' : '';
        printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( $link ) ), $link );
    }
 
    /** Link to last page, plus ellipses if necessary */
    if ( ! in_array( $max, $links ) ) {
        if ( ! in_array( $max - 1, $links ) )
            echo '<li>…</li>' . "\n";
 
        $class = $paged == $max ? ' class="active"' : '';
        printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( $max ) ), $max );
    }
 
    /** Next Post Link */
    if ( get_next_posts_link() )
        printf( '<li>%s</li>' . "\n", get_next_posts_link() );
 
    echo '</ul></div>' . "\n";
 
}
/**
 * Pagination Ends Here.
 */

add_action( 'set_comment_cookies', function( $comment, $user ) {
    setcookie( 'ta_comment_wait_approval', '1', 0, '/' );
}, 10, 2 );

add_action( 'init', function() {
    if( isset( $_COOKIE['ta_comment_wait_approval'] ) && $_COOKIE['ta_comment_wait_approval'] === '1' ) {
        setcookie( 'ta_comment_wait_approval', '0', 0, '/' );
        add_action( 'comment_form_before', function() { ?>
           <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
           <script type="text/javascript">
            (function ($) {
       
                        console.log("The button got clicked")
                        Swal.fire(
                          'You have registered Successfully!',
                          'Thank you for registering for the event.<br> Click on the calender to save the date.<br>',
                          'success',
                          
                        ).then(function() {
    window.location.href = "#";
});
                
               
        
        })( jQuery );
                    </script>
    <?php    });
    }
});

add_filter( 'comment_post_redirect', function( $location, $comment ) {
    $location = get_permalink( $comment->comment_post_ID ) . '#wait_approval';
    return $location;
}, 10, 2 );












