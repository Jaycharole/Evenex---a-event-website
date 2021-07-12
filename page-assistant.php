<?php


get_header();
?>

<div class="header-page">
     <h2>Evenx Assistant</h2>
</div>
<br>
<div class="container">
    <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
            <h1>Meet our assistant Eventem</h1>
            <img src="<?php echo get_template_directory_uri(); ?>/img/chatbot.png" alt="">
            <p><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Eventm is a AI based chatbot which is developed to improve the user experience.</p>
            <p><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;If user is stuck somewhere our chat assistant will asist you on what and how to prefer.</p>
        </div>
        
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
            <div class="chatbot">
               <iframe width="450" height="800" allow="microphone;" src="https://console.dialogflow.com/api-client/demo/embedded/da83ac5f-e3ad-41e5-aebb-ab3a60e48646"></iframe>
           </div>
        </div>
    </div>
</div>
<br>   



<?php
get_footer();