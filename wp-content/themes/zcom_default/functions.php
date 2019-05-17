<?php 
// Include Global functions
require_once dirname(__FILE__).'/../../common/functions.php'; 

if (function_exists('acf_add_options_page')) {
	acf_add_options_page([
    'page_title'  => 'Site Configuration',
    'position'    => 2,
    'post_id'     => 'site_configuration'
  ]);
}

// Package Menu
add_custom_post('package', 'Package', ['menu_icon' => 'dashicons-admin-post']);
add_custom_category('package-type', 'Package Type', 'package');

// Services Menu
add_custom_post('service', 'Service', ['menu_icon' => 'dashicons-admin-post']);


add_action('after_setup_theme', '_template_after_setup_theme'); function _template_after_setup_theme() {
  add_action('wp_enqueue_scripts', '_template_wp_enqueue_scripts'); function _template_wp_enqueue_scripts() {
		wp_enqueue_script('jquery-js', get_node_modules_file_url().'/jquery/dist/jquery.min.js');
				
		// Font Awesome
		wp_enqueue_style('font-awesome-css', get_node_modules_file_url().'/font-awesome/css/font-awesome.min.css'); 
	
    // Magnific Popup
    wp_enqueue_style('magnific-popup-css', get_node_modules_file_url().'/magnific-popup/dist/magnific-popup.css'); 
    wp_enqueue_script('magnific-popup-js', get_node_modules_file_url().'/magnific-popup/dist/jquery.magnific-popup.min.js'); 
    
    // Jquery Validation
    wp_enqueue_script('jquery-validation-js', get_node_modules_file_url().'/jquery-validation/dist/jquery.validate.min.js');  
    
		// Main Javascript
		wp_enqueue_script('main-js', get_template_directory_uri().'/assets/js/main.js'); 
	}
}