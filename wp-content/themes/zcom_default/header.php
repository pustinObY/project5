<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <?php wp_head(); ?>
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">
</head>

<body <?php body_class(); ?>>
  <header class="header">
    <div class="header__navigation">
      <div class="header__container">
        <div class="header__logo">
          <img src="<?php echo get_template_directory_uri(); ?>/assets/images/header/logo.png" alt="Company Logo">
        </div>

        <nav class="navigation">
          <div class="navigation__toggle"><i class="fa fa-bars" aria-hidden="true"></i></div>
          <ul class="navigation__list">
            <?php foreach (get_menu_list('header-menu') as $header_menu) : ?>
              <li class="navigation__item <?php if ((is_home() && $header_menu->post_name === 'home') || is_page($header_menu->object_id)) : ?>active<?php endif; ?>"><a href="<?php echo $header_menu->url; ?>"><?php echo $header_menu->title; ?></a></li>
            <?php endforeach; ?>
          </ul>
        </nav>
      </div>

      <div class="header__text">
        <h2 class="heading-secondary white">Hoffnungen im flusterton in achthausen</h2>
        <p>Ri marktplatz kuchenture am es getunchten pa.</p>
        <?php if (is_home()) : ?>
          <a href="<?php echo get_site_url(); ?>/services/" class="btn btn--yellow header__btn">View Services</a>
        <?php endif; ?>
      </div>
    </div>
  </header>