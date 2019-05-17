<?php /* Template Name: Contact */ ?>
<?php get_header(); ?>

<main>
  <section class="section-contact-top">
    <div class="row">
      <div class="col-1-of-2">
        <div class="contact-details">
          <div class="col-1-of-2">
            <h4 class="heading-fourth">Email</h4>
            <p class="customized-margin"><?php echo get_field('email_address', 'site_configuration'); ?></p>
            <h4 class="heading-fourth">Contact No</h4>
            <p class="customized-margin"><?php echo get_field('contact_number', 'site_configuration'); ?></p>
          </div>
  
          <div class="col-1-of-2">
            <h4 class="heading-fourth">Follow Us</h4>
            <div class="social-icon">
              <a href="<?php echo get_field('facebook', 'site_configuration'); ?>"><i class="fa fa-facebook-f"></i></a>
              <a href="<?php echo get_field('intagram', 'site_configuration'); ?>"><i class="fa fa-instagram"></i></a>
            </div>
          </div>        
        </div>
      </div>

      <div class="col-1-of-2">
        <div class="contact">
          <h2 class="heading-secondary">Send us a message!</h2>
          <form id="form-id" action="<?php echo get_site_url(); ?>/send_email.php" class="contact-form">
            <div class="contact__info">
              <input type="text" name="name" class="name" placeholder="Name" required>
              <input type="email" name="emailaddress" class="email" placeholder="Email Address" required>
            </div>
  
            <input type="text" name="subject" class="subject" placeholder="Subject" required>
            <textarea name="message" class="message" id="" cols="30" rows="8" placeholder="Message" required></textarea>
  
            <button class="btn btn--yellow" type="submit">Send</button>
          </form>
        </div>
      </div>
    </div>
  </section>  

  <section class="section-contact-bottom">
    <div class="row">
      <div class="contact-text">
        <h2 class="heading-secondary">Visit Us</h2>
        <p><?php echo get_field('address', 'site_configuration', false); ?></p>
      </div>
    </div>
  </section>
</main>

<?php get_footer(); ?>
