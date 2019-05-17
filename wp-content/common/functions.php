<?php
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */

add_action('after_setup_theme', '_after_setup_theme'); function _after_setup_theme() {
  /*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
  add_theme_support('title-tag');

  /**
   * Embed CSS and Javascript scripts
   */

  add_action('wp_enqueue_scripts', '_wp_enqueue_scripts'); function _wp_enqueue_scripts() {
    wp_enqueue_style('template/style', get_stylesheet_uri()); // Insert current template 'style.css' file style
    wp_enqueue_style('template/css/main.css', get_template_directory_uri().'/assets/css/main.css'); // Insert current template 'style.css' file style

    // Common JS files
    wp_enqueue_script('node_modules/jquery.min.js', get_node_modules_file_url().'/jquery/dist/jquery.min.js'); 
    if (in_array($_SERVER['SERVER_ADDR'], ['127.0.0.1'])) {wp_enqueue_script('common/js/main', get_common_file_url().'/assets/js/main.js');} 
  }
}

/**
 * add_custom_post($name, $plural, $options, $labels);
 * @param $id       Unique ID name
 * @param $name     Custom Post name
 * @param $options  (Optional) Post options. Default `NULL`
 * @param $labels   (Optional) Post labels. Default `NULL`
 */
$__list_custom_post = []; function add_custom_post($id, $name, $options = null, $labels = null) { 
  global $__list_custom_post;

  if (!is_array($options)) {
    $options = [];
  }

  if (!is_array($labels)) {
    $labels = [];
  }
  
  $_options = array_merge([
    'label'         => $name,
    'supports'      => array('title', 'editor', 'thumbnail', 'excerpt'),
    'show_ui'       => true,
    'menu_position' => 4,
    'menu_icon'     => 'dashicons-admin-post'
  ], $options);

  $_options['labels'] = array_merge([
    'name'                  => $name,
    'singular_name'         => $name,
    'add_new_item'          => 'Add New '.$name,
    'edit_item'             => 'Edit '.$name,
    'new_item'              => 'New '.$name,
    'view_item'             => 'View '.$name,
    'view_items'            => 'View '.$name,
    'search_items'          => 'Search '.$name,
    'not_found'             => 'No '.$name.' found',
    'not_found_in_trash'    => 'Not '.$name.' found in Trash',
    'parent_item_colon'     => 'Parent '.$name.':',
    'all_items'             => 'All '.$name,
    'archives'              => $name.' Archives',
    'attributes'            => $name.' Attributes',
    'insert_into_item'      => 'Insert into '.$name,
    'uploaded_to_this_item' => 'Uploaded to this '.$name,
    'menu_name'             => $name,
    'filter_items_list'     => 'Filter '.$name.' list',
    'items_list_navigation' => $name.' list navigation',
    'items_list'            => $name.' list',
    'name_admin_bar'        => $name
  ]);

  $__list_custom_post[$id] = $_options;
}

/**
 * add_custom_category($id, $name, $plural, $options, $labels);
 * @param $id       Unique ID name
 * @param $name     Custom Category name
 * @param $post     Custom Post name
 * @param $options  (Optional) Category options. Default `NULL`
 * @param $labels   (Optional) Category labels. Default `NULL`
 */
$__list_custom_category = []; function add_custom_category($id, $name, $post, $options = null, $labels = null) {
  global $__list_custom_category;

  if (!is_array($options)) {
    $options = [];
  }

  if (!is_array($labels)) {
    $labels = [];
  }

  $_options = array_merge([
    'hierarchical'  => true,
    'rewrite'       => array('slug' => $id)
  ], $options);

  $_options['labels'] = array_merge([
    'name'                        => $name,
    'singular_name'               => $name,
    'all_items'                   => 'All '.$name,
    'edit_item'                   => 'Edit '.$name,
    'view_item'                   => 'View '.$name,
    'update_item'                 => 'Update '.$name,
    'add_new_item'                => 'Add New '.$name,
    'new_item_name'               => 'New '.$name.' Name',
    'parent_item'                 => 'Parent '.$name,
    'parent_item_colon'           => 'Parent '.$name.':',
    'search_items'                => 'Search '.$name,
    'popular_items'               => 'Popular '.$name,
    'separate_items_with_commas'  => 'Separate types with commas',
    'add_or_remove_items'         => 'Add or remove '.$name,
    'choose_from_most_used'       => 'Choose from the most used '.$name,
    'not_found'                   => 'No '.$name.' found.',
    'back_to_items'               => '← Back to '.$name
  ]);

  $__list_custom_category[$id] = ['post' => $post, 'options' => $_options];
}

/**
 * Fire on the initialization of screen or scripts.
 **/
add_action('init', '_init'); function _init() {
  global $__list_custom_post, $__list_custom_category;

  foreach ($__list_custom_post as $key => $val) {
    register_post_type($key, $val);
  }

  foreach ($__list_custom_category as $key => $val) {
    register_taxonomy($key, $val['post'], $val['options']);
  }

  /**
   * Menu
   */
  register_nav_menus(array(
    'header-menu' => 'Header Menu',
    'footer-menu' => 'Footer Menu'
  ));

  /**
   * Hide Admin Bar
   */
  show_admin_bar(false);
}

/**
 * Fire on the initialization of the admin screen or scripts.
 */
add_action('admin_init', '_admin_init'); function _admin_init() {
  add_theme_support( 'post-thumbnails' ); // Add Post Featured Image box
  remove_submenu_page('index.php', 'index.php'); // Hide Admin Dashboard > Home menu
  remove_submenu_page('index.php', 'update-core.php'); // Hide WordPress code udpate menu
  remove_menu_page('edit.php'); // Remove default POST type
  remove_menu_page('tools.php'); // Remove hide Tools 
}

/**
 * Clean Admin Bar menus
 */
add_action('wp_before_admin_bar_render', '_wp_before_admin_bar_render'); function _wp_before_admin_bar_render() {
  global $wp_admin_bar;
  $wp_admin_bar->remove_menu('new-content');
  $wp_admin_bar->remove_menu('comments');
  $wp_admin_bar->remove_menu('wp-logo');
}

/**
 * Add Page/Post `Featured Image` column
 */
add_filter('manage_posts_columns', '_manage_posts_columns'); 
add_filter('manage_pages_columns', '_manage_posts_columns'); 
function _manage_posts_columns($columns) {
  return array_slice($columns, 0, 2, true) + array("featured-image" => "Featured Image") + array_slice($columns, 1, count($columns) - 1, true);
}
  
add_filter('manage_posts_custom_column', '_manage_posts_custom_column'); 
add_filter('manage_pages_custom_column', '_manage_posts_custom_column'); 
function _manage_posts_custom_column($column_name) {
  if ($column_name === 'featured-image') {
      the_post_thumbnail('thumbnail');
  }

  return $column_name;
}

##########################################################
#################### HELPER FUNCTIONS ####################
##########################################################

/**
 * Return common files
 * @return [BASE URL]/wp-content/common
 */
function get_common_file_url() {
  return get_site_url().'/wp-content/common';
}

/**
 * Return node_modules files
 * @return [BASE URL]/node_modules
 */
function get_node_modules_file_url($file = '') {
  return get_site_url().'/node_modules';
}

/**
 * Retrieve menu list
 * @param $slug   Menu slug name
 */
function get_menu_list($slug) {
  $locations = get_nav_menu_locations();
  return isset($locations[$slug]) ? wp_get_nav_menu_items($locations[$slug]) : array();
}