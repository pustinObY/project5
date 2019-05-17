<footer class="footer">
  <div class="row">
    <div class="col-1-of-2">
      <h4 class="heading-fourth">About Us</h4>
      <p>Fu stadtchen um da lohgruben grundlich schnupfen zerfasert. Nach trug in bi lust du fiel. Haus sah kurz bis ehre. Hoffnungen im flusterton in achthausen landsleute federdecke lehrlingen la. Ri marktplatz kuchenture am es getunchten pa. Zu auffiel se regnete wo niemand besorgt</p>
    </div>

    <div class="col-1-of-2">
      <div class="clearfix">
        <div class="col-1-of-3">
          <h4 class="heading-fourth">Follow Us</h4>
          <div class="social-icon">
            <a href="<?php echo get_field('facebook', 'site_configuration'); ?>"><i class="fa fa-facebook-f"></i></a>
            <a href="<?php echo get_field('instagram', 'site_configuration'); ?>"><i class="fa fa-instagram"></i></a>
          </div>
        </div>

        <div class="col-1-of-3">
          <h4 class="heading-fourth">Contact</h4>
          <div class="contact-info">
            <p><?php echo get_field('email_address', 'site_configuration'); ?></p> 
            <p><?php echo get_field('contact_number', 'site_configuration'); ?></p>
          </div>
          <p><?php echo get_field('address', 'site_configuration', false); ?></p>
        </div>

        <div class="col-1-of-3">
          <nav class="navigation navigation--footer">
            <ul class="navigation__list">
              <?php foreach (get_menu_list('header-menu') as $header_menu) : ?>
              <li class="navigation__item--footer"><a href="<?php echo $header_menu->url; ?>"><?php echo $header_menu->title; ?></a></li>
              <?php endforeach; ?>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>

  <div class="row u-padding-bottom-0">
    <div class="footer__copyright">Copyright 2018 <b>Company</b> All Rights Reserved.</div>
  </div>
</footer>

<?php wp_footer(); ?>
</body>
</html>