<?php
require_once 'wp-load.php';

$to = get_field('email_address', 'site_configuration');

if ($_SERVER['REQUEST_METHOD'] === 'POST' && !empty($to)) {
  $headers  = array(
    'Content-Type: text/html; charset=UTF-8',
    'From: '.get_bloginfo('name').' <'.$to.'>'
  );

  $subject  = filter_input(INPUT_POST, 'subject');
  $message  = '
  
  <table border="0">
    <tr>
      <td><strong>Name</strong></td>
      <td>: '.filter_input(INPUT_POST, 'name').'</td>
    </tr>
    <tr>
      <td><strong>Email Address</strong></td>
      <td>: '.filter_input(INPUT_POST, 'emailaddress').'</td>
    </tr>
    <tr>
      <td><strong>Message</strong></td>
      <td>: '.filter_input(INPUT_POST, 'message').'</td>
    </tr>
  </table>
  
  ';
}

echo json_encode(array('send' => wp_mail($to, $subject, $message, $headers)));