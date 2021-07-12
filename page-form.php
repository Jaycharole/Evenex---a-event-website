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


<p>Hey hello world!</p>

<div class="container">

<div data-role="page" id="pageone">
  <div data-role="header">
    <h1 style="text-align:center;">REGISTER</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>Two Different types of Accounts:</p>
    <div class="ui-grid-a">
      <div class="ui-block-a">
        <a href="http://meetup.ezyro.com/organization-register.php" class="ui-btn ui-corner-all ui-shadow">ORGANIZATION</a><br>
        <p>Click on the above button to create an organization account.</p>
		<p>You can create events on the website and get required volunteers.</p>
      </div>

      <div class="ui-block-b">
        <a href="http://meetup.ezyro.com/volunteer-register.php" class="ui-btn ui-corner-all ui-shadow">VOLUNTEER</a><br>
         <p>Click on the above button to create an volunteer account.</p>
		 <p>You can search and apply for events with an updated profile.</p>
      </div>
    </div>
  </div>
</div>
</div>
	

<?php
get_footer();
