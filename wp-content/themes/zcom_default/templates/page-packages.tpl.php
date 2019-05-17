<?php /* Template Name: Packages */ ?>
<?php get_header(); ?>

<main>
  <?php if ($wp_query = new WP_Query(array('post_type' => 'package', 'orderby' => 'date', 'order' => 'ASC', 'post_per_page' => '3'))) : ?>
  <section class="section-top">
    <div class="row">
      <div class="top__title">
        <h3 class="heading-tertiary">Messingnen leuchtturm ubelnehmen</h3>
        <p>Messingnen leuchtturm ubelnehmen</p>
      </div>
    </div>

    <div class="row">
      <?php while ($wp_query->have_posts()) : $wp_query->the_post(); ?>
      <div class="col-1-of-3">
        <div class="divider">&nbsp;</div>     

        <img src="<?php the_post_thumbnail_url(); ?>" alt="Package Image" class="top__img"> 

        <div class="top__details">
          <h3 class="heading-tertiary"><?php the_title(); ?></h3>
          <p><?php echo get_field('price'); ?></p>
        </div>

        <div class="top__description">
          <p><?php echo get_the_excerpt(); ?></p>
        </div>
      </div>
      <?php endwhile; ?>
    </div>  

    <a href="<?php echo get_site_url(); ?>/contact/" class="btn btn--yellow">Ask for Quototation</a>
  </section> 
  <?php endif; ?>

  <section class="section-packages">
    <div class="row">
      <div class="discount-text">
        <h1 class="heading-primary">50% off for 10 tours</h1>
        <p>Messingnen Leuchtturm ubelnehmen</p>
      </div>
    </div>
</section>
</main>

<?php get_footer(); ?>
