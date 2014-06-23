<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'advanced_databases');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         'DSiX 6v]C?v_(h&AIVK|#>s2UO<7yPCbHK0)IXGb)fdz9yz&hIY<8zS07QU@^a8i');
define('SECURE_AUTH_KEY',  '8f~mKB$N@MfW$lGlfJ: cKn/`hV9bgw,@|xsFu^@ntFYeEbzhYGuE%XtOPE.Kn 5');
define('LOGGED_IN_KEY',    'VC+!e?OU(*g6*|@G!19=~gkbXv4NC?ZDPZ@w==^sHSDR^oF-FUY#)|-3nZtIJJce');
define('NONCE_KEY',        'S7 xW0d[Yv~0p}<Ng`3{+t3jzn3t|#+EFla+GM7?A-ba;x+{H%-;Ll?x-k+{5OgU');
define('AUTH_SALT',        '|+(a-Z{(:ZsA)r%x]~Z`(6;-Wt(#9I+[IR([}!(|Q/~}62[sG/&;{?EtOF4!dv@R');
define('SECURE_AUTH_SALT', 'Nd}5W_;%s#n9-du?|rf0xc(j41(/ekPTDN|(cMGGK=V;$-|RT!%#L-dl5W2)x-&-');
define('LOGGED_IN_SALT',   '=67iKlNAaUTWb{DVVpC3tO,PABK<oR#8Em|JV7BO`kuE@OKI>y!U*k@ WpO>WokP');
define('NONCE_SALT',       ';yU2?Q4Ulucw>04=!Rv}$yp<au7Pq W[1-l{Yk[,l0k^ipK-6h/i6+>Z,uBd:MqU');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
