<?php /* Template Name: Services */ ?>
<?php get_header(); ?>

<main>
  <?php if ($wp_query = new WP_Query(array('post_type' => 'service', 'orderby' => 'date', 'order' => 'ASC', 'post_per_page' => '3'))) : ?>
  <section class="section-circle">
    <div class="row">
      <div class="circle__title">
        <h2 class="heading-secondary">Messingnen leuchtturm ubelnehmen </h2>
        <p>Messingnen leuchtturm ubelnehmen</p>
      </div>

      <?php while ($wp_query->have_posts()) : $wp_query->the_post(); ?>
      <div class="col-1-of-3">
        <div class="package-card">
          <img src="<?php the_post_thumbnail_url(); ?>" alt="Service Image" class="package-card__img">
          <div class="package-card__details">
            <h4 class="heading-fourth"><?php the_title(); ?></h4>
            <p><?php echo get_the_excerpt(); ?></p>
          </div>
        </div>
      </div>
      <?php endwhile; ?>
    </div>
  </section>
  <?php endif; ?>

<section class="section-images">
  <div class="row">
    <div class="col-1-of-3">
      <img src="<?php echo get_template_directory_uri(); ?>/assets/images/services/services-square.jpg" alt="" class="first-img">
    </div>

    <div class="col-2-of-3">
      <img src="<?php echo get_template_directory_uri(); ?>/assets/images/services/services-building.jpg" alt="" class="second-img second-img--hide">
    </div>
  </div>
 
  <div class="row">
    <div class="col-2-of-3">
      <img src="<?php echo get_template_directory_uri(); ?>/assets/images/services/services-rectangle.jpg" alt="" class="second-img">
    </div>

    <div class="col-1-of-3">
      <div class="square-text">
        <h4 class="heading-fourth">Providing Great Services Just for  You</h4>
        <p>Pero esto importa poco a nuestro cuento: basta que en la narración dél no se salga un punto de la verdad duelos vierentresemana olla diferenombrenombrento: basta poco y que vellorí d</p>
      </div>
    </div>
  </div>
</section>
</main>

<?php get_footer(); ?>
