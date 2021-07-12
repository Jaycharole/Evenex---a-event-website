<?php

get_header();
?>

<!--=====SLIDER SECTION=====-->
<!---<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="<?php echo get_template_directory_uri(); ?>/img/slider_img1.png" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
        <div class="slider-content">
         <h5>A good platform for organizations and participants</h5>
          <p>There are two different types of account exist on the website. One is to facilitate companies to create a listing of event and Other is for participants to find events nearby as per their choice</p>
          <button type="button" class="slider-button">VIEW EVENTS</button>
          </div>
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="<?php echo get_template_directory_uri(); ?>/img/slider_img2.png" alt="Second slide">
      <div class="carousel-caption d-none d-md-block">
        <div class="slider-content">
         <h5>Organizations can easily create events in minutes</h5>
          <p >Organizations just need to register to create event listing</p>
          <button type="button" class="slider-button">REGISTER AS ORGANIZATION</button>
        </div>
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="<?php echo get_template_directory_uri(); ?>/img/slider_img3.png" alt="Third slide">
      <div class="carousel-caption d-none d-md-block">
        <div class="slider-content">
         <h5>Users can easily find their specific Events to join and work</h5>
          <p>Volunteers just need to register to find event listing as per their location interest</p>
          <button type="button" class="slider-button">REGISTER AS USER</button>
          </div>
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div> --->

<section id="hero" class="d-flex align-items-center">

    <div class="container-fluid" data-aos="fade-up">
      <div class="row justify-content-center">
        <div class="col-xl-5 col-lg-6 pt-3 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
          <h1>Want to make your events and meetups successful?</h1>
          <h2>So be free and trust <b>Evenex</b> </h2>
          <div><a href="#about" class="btn-get-started scrollto">Get Started</a></div>
        </div>
        <div class="col-xl-4 col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="150">
          <img src="<?php echo get_template_directory_uri(); ?>/img/hero-img.png" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>
  </section>
  <br><br>
<div class="container">
   <div class="search-box">
   <div class="section-title-1">
     <h2>Search for what you want !</h2>
  </div> <br>
<?php  echo do_shortcode('[ivory-search id="182" title="Default Search Form"]'); ?>
</div> 
</div> 

<!-- Services Section -->
            <section id="services" class="services content-section">
                <div class="container">
                    <div class="row text-center">
                        <div class="col-md-12">
                           <div class="section-title-1">
                            <h2>What we do</h2>
                            </div>
                            <h3 class="caption gray">We provide Simple, Creative, &amp; Flexible platform</h3>
                        </div><!-- /.col-md-12 -->

                        <div class="container">
                            <div class="row text-center">
                                <div class="col-md-4">
                                    <div class="row services-item text-center wow flipInX" data-wow-offset="10">
                                        <i class="fa fa-cogs fa-3x"></i>
                                        <h4>&nbsp;Designing</h4>
                                        <p>Design your websites with Evenex in reasonable prizes.</p>
                                    </div><!-- /.row -->
                                </div><!-- /.col-md-4 -->

                                <div class="col-md-4">
                                    <div class="row services-item text-center wow flipInX" data-wow-offset="10">
                                        <i class="fa fa-line-chart fa-3x"></i>
                                        <h4>&nbsp;Digital Marketing</h4>
                                        <p>Digitalize your events and attract your users.</p>
                                    </div>
                                </div>


                                <div class="col-md-4">
                                    <div class="row services-item text-center wow flipInX" data-wow-offset="10">
                                        <i class="fa fa-bullhorn fa-3x"></i>
                                        <h4>&nbsp;Social Marketing</h4>
                                        <p>Discover social marketing and take your charity work to new heights.</p>
                                    </div><!-- /.row -->
                                </div><!-- /.col-md-4 -->


                                <div class="col-md-4">
                                    <div class="row services-item text-center wow flipInX" data-wow-offset="20">
                                        <i class="fa fa-paint-brush fa-3x"></i>
                                        <h4>&nbsp;Event management</h4>
                                        <p>As we have team of event managers to provide you smooth event management.</p>
                                    </div><!-- /.row -->
                                </div><!-- /.col-md-4 -->



                                <div class="col-md-4">
                                    <div class="row services-item text-center wow flipInX" data-wow-offset="20">
                                        <i class="fa fa-users fa-3x"></i>
                                        <h4>&nbsp;Communication</h4>
                                        <p>Communication channel between Organizations and volunteers is improved.</p>
                                    </div><!-- /.row -->
                                </div><!-- /.col-md-4 -->


                                <div class="col-md-4">
                                    <div class="row services-item text-center wow flipInX" data-wow-offset="20">
                                        <i class="fa fa-globe fa-3x"></i>
                                        <h4>&nbsp;Global Events</h4>
                                        <p>Specializing in world wide events to make volunteers work based on their interests</p>
                                    </div><!-- /.row -->
                                </div><!-- /.col-md-4 -->

                            </div><!-- /.row -->
                        </div><!-- /.container -->
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </section><!-- /.section -->



    
<!-- Products Section -->

            <section id="products" class="products content-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="products-container">

                                <div class="col-md-12">
                                    <div class="section-title">
                                    <center>
                                    <h2>Why EVENEX is awesome platform?</h2><br>
                                    </center>
                                    </div>
                                </div><!-- /.col-md-12 -->
  
                            
                            <div class="row">
                                <div class="col-md-6 product-item wow fadeIn" data-wow-offset="10">
                                    <div class="media-left">
                                        <span class="icon"><i class="fa fa-arrows-alt fa-3x"></i></span>
                                    </div><!-- /.media-left -->

                                    <div class="media-body">
                                        <h3 class="media-heading">Responsive Layout</h3>
                                        <p>Powerful Layout with Responsive functionality that can be adapted to any screen size.</p>
                                    </div><!-- /.media-body -->
                                </div><!-- /.col-md-6 -->



                                <div class="col-md-6 product-item wow fadeIn" data-wow-offset="10">
                                    <div class="media-left">
                                        <span class="icon"><i class="fa fa-eye fa-3x"></i></span>
                                    </div><!-- /.media-left -->

                                    <div class="media-body">
                                        <h3 class="media-heading">User Friendly</h3>
                                        <p>Beautiful and easy to use design with user-friendly features and great user interface for people.</p>
                                    </div><!-- /.media-body -->
                                </div><!-- /.col-md-6 -->
                                </div>
                                
                                <div class="row">
                                <div class="col-md-6 product-item wow fadeIn" data-wow-offset="10">
                                    <div class="media-left">
                                        <span class="icon"><i class="fa fa-commenting fa-3x"></i></span>
                                    </div><!-- /.media-left -->

                                    <div class="media-body">
                                        <h3 class="media-heading">AI based chatbot</h3>
                                        <p>AI based chatbot to solve your problems 24*7.</p>
                                    </div><!-- /.media-body -->
                                </div><!-- /.col-md-6 -->

                                <div class="col-md-6 product-item wow fadeIn" data-wow-offset="10">
                                    <div class="media-left">
                                        <span class="icon"><i class="fa fa-user-plus fa-3x"></i></span>
                                    </div><!-- /.media-left -->

                                    <div class="media-body">
                                        <h3 class="media-heading">Registration</h3>
                                        <p>Simple yet powerful Illustration to guide through the entire process for both Organization &amp; users.</p>
                                    </div><!-- /.media-body -->
                                </div><!-- /.col-md-6 -->
                                </div>
                                
                                
                                <div class="row">
                                <div class="col-md-6 product-item wow fadeIn" data-wow-offset="10">
                                    <div class="media-left">
                                        <span class="icon"><i class="fa fa-calendar fa-3x"></i></span>
                                    </div><!-- /.media-left -->

                                    <div class="media-body">
                                        <h3 class="media-heading">Scheduled Events</h3>
                                        <p>Events are categorized based on date, time, and location. These are represented beautifully with carousel effects.</p>
                                    </div><!-- /.media-body -->
                                </div><!-- /.col-md-6 -->

                                <div class="col-md-6 product-item wow fadeIn" data-wow-offset="10">
                                    <div class="media-left">
                                        <span class="icon"><i class="fa fa-envelope-o fa-3x"></i></span>
                                    </div><!-- /.media-left -->

                                    <div class="media-body">
                                        <h3 class="media-heading">Support Team</h3>
                                        <p>Support on mail through contact form for everyone to have smooth experience.</p>

                                    </div><!-- /.media-body -->
                                </div><!-- /.col-md-6 -->
                                </div>
 
                            </div><!-- /.products-container -->
                        </div><!-- /.col-md-12 -->
                        
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </section><!-- /.products -->

<!-- Our clients -->
            <section id="clients" class="our-clients content-section text-center">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                           <div class="section-title">
                            <h2>Our clients</h2>
                            </div>
                            <h3 class="caption-white">list of some of our clients.</h3>
                        </div><!-- /.col-md-12-->
                    </div><!-- /.row -->

                    <div class="row client-slider">
                        <div class="item col-xs-4 col-md-2 i">
                            <a href="#" title="#">
                                <img src="<?php echo get_template_directory_uri(); ?>/img/madd-logo.png"  class="img-responsive" style="width=170px;height:100px;">
                            </a>
                        </div><!-- /.col-xs-4 -->

                        <div class="item col-xs-4 col-md-2 i">
                            <a href="#" title="#">
                                <img src="<?php echo get_template_directory_uri(); ?>/img/madd-logo.png"  class="img-responsive" style="width=170px;height:100px;">
                            </a>
                        </div><!-- /.col-xs-4 -->

                        <div class="item col-xs-4 col-md-2 i">
                            <a href="#" title="#">
                                <img src="<?php echo get_template_directory_uri(); ?>/img/madd-logo.png"  class="img-responsive" style="width=170px;height:100px;">
                            </a>
                        </div><!-- /.col-xs-4 -->
                        
                         <div class="item col-xs-4 col-md-2 i">
                            <a href="#" title="#">
                                <img src="<?php echo get_template_directory_uri(); ?>/img/madd-logo.png"  class="img-responsive" style="width=170px;height:100px;">
                            </a>
                        </div><!-- /.col-xs-4 -->

                    </div><!-- /.row -->
                </div><!-- /.container -->
            </section><!-- /.our-clients -->


            <!-- Counter Section -->

            <section id="counter" class="counter-section content-section">

                <div class="container">
                    <div class="row text-center">
                        <div class="col-md-12">
                           <div class="section-title">
                            <h2 class="white">Our Achievements</h2>
                            </div>
                        </div><!-- /.col-md-12 -->

                        <div class="col-sm-3 counter-wrap wow fadeInUp" data-wow-offset="10">
                            <strong><span class="timer">40</span>+</strong>
                            <span class="count-description">Events</span>
                        </div><!-- /.col-sm-3 -->

                        <div class="col-sm-3 counter-wrap wow fadeInUp" data-wow-offset="10">
                            <strong><span class="timer">50</span>+</strong>
                            <span class="count-description">Locations</span>
                        </div><!-- /.col-sm-3 -->

                        <div class="col-sm-3 counter-wrap wow fadeInUp" data-wow-offset="10">
                            <strong><span class="timer">10</span>+</strong>
                            <span class="count-description">Organizations</span>
                        </div><!-- /.col-sm-3 -->
                        
                        <div id="feedback" class="col-sm-3 counter-wrap wow fadeInUp" data-wow-offset="10">
                            <strong><span class="timer">30</span>+</strong>
                            <span class="count-description">Volunteers</span>
                        </div><!-- /.col-sm-3 -->
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </section><!-- /.counter-section -->


            <!-- Call to action - two section -->

            <section class="cta-two-section">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <h3>Want to give feedback?</h3>
                            <p>We value your feedback</p>
                        </div>
                        <div class="col-sm-3">
                            <a class="typeform-share button" href="https://forms.gle/QdvAtHfd9RF99dPE9" data-mode="popup" style="display:inline-block;text-decoration:none;background-color:#ff0000;color:white;cursor:pointer;font-family:raleway;font-size:20px;line-height:50px;text-align:center;margin:0;height:50px;padding:0px 33px;border-radius:25px;max-width:100%;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;font-weight:bold;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale;">Give Feedback</a><script>(function(){var qs,js,q,s,d=document,gi=d.getElementById,ce=d.createElement,gt=d.getElementsByTagName,id="typef_orm_share",b="https://s3-eu-west-1.amazonaws.com/share.typeform.com/";if(!gi.call(d,id)){js=ce.call(d,"script");js.id=id;js.src=b+"share.js";q=gt.call(d,"script")[0];q.parentNode.insertBefore(js,q)}})()</script>
                        </div>
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </section><!-- /.cta-two-section -->


            <!-- Contact section -->

    <br>
    <section id="contact" class="contact section-bg">
      <div class="container" data-aos="fade-up">

        <div class="col-md-12">
                <div class="section-title-1">
                        <h2>Contact Us</h2>
                </div>
                <center><h3 class="caption gray">Feel free to get in touch with us if you want to give feedback or simply something awesome suggestions</h3></center>
        <br>
        </div><!-- /.col-md-12 -->

        <div class="row">
          <div class="col-lg-6">
            <div class="info-box mb-4">
              <i class="fa fa-map"></i>
              <h3>Our Address</h3>
              <p>Mumbai, Maharashtra, India</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="fa fa-envelope"></i>
              <h3>Email Us</h3>
              <p>contact@evenx.com</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="fa fa-phone"></i>
              <h3>Call Us</h3>
              <p>9892968944</p>
            </div>
          </div>

        </div>

        <div class="row">

          <div class="col-lg-6 ">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3770.471340859084!2d72.90720761481668!3d19.086967556587805!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c62d45927ad1%3A0x9ee4301782e456bd!2sRamniranjan%20Jhunjhunwala%20College!5e0!3m2!1sen!2sin!4v1615927838329!5m2!1sen!2sin" frameborder="0" style="border:0; width: 100%; height: 384px;"></iframe>
          </div>
          
          <div class="col-lg-6 contact">
            <?php  echo do_shortcode('[contact-form-7 id="183" title="Contact form 1"]'); ?>
          </div>
        </div>
        
        

      </div>
    </section><!-- End Contact Section -->
<br>


<?php get_footer();