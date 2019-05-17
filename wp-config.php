<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'zcom5');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '_8@w>Z_O1;uT*u9AM{NO >-hNOL~yUh%}j7 T%5BvRqGR)(w@IP=I$c1-!%>RhcH');
define('SECURE_AUTH_KEY',  '_Qd*+~cmk[aPQh#Sxr~;5,A*XqDGV30p7t45TvQQuA=&8XsH4?=&)zZp[In/z{9S');
define('LOGGED_IN_KEY',    '2G7=U(bSnGnu9P!q!-3AKsHX8R>}8S)*zmfK2{=9JMtgrn:!;>n*Y?>OAlw.AQp(');
define('NONCE_KEY',        'y2,W)kuHb_NqaHVVf$0&Ad0RW]53sdRg+S&:*{h89fO/V5Sx:rEj:0[Ql*al wx3');
define('AUTH_SALT',        'bWfz6vWhVZ:sg(iL|c+QSD4-*Qs~+1g0=cQ:JdjKj.j4=vuF|/HN9ol7wq9o7GK2');
define('SECURE_AUTH_SALT', '?a0&zVsIj:Uk1Z39x(u4TVoq(oSGt{QoKa`<~C?#@789WWl9R!2Tcq3}mgP/h&~e');
define('LOGGED_IN_SALT',   '~E[b^:x]Z-v/t7U,Tz<o:nI$,tLKi@.:6$M-Kh6d_3%j5dB7`UR^1.ppMK`<B)!a');
define('NONCE_SALT',       'J>LfA1oju:F^c,x(cII/:pW^$#3uFg/1#wi=W3o#&Tu7% .[QMjH*PFIXxfmyGfk');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'td_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
