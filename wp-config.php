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
define('DB_NAME', 'arganenl_wp264');

/** MySQL database username */
define('DB_USER', 'arganenl_wp264');

/** MySQL database password */
define('DB_PASSWORD', 'h9o97xqSPd');

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
define('AUTH_KEY',         'gsjiyszldicolpypix7jpahctezrpmq5ykkcfcs3bzqduxtwru7id6tucsvlhrx2');
define('SECURE_AUTH_KEY',  'wbjn1nhs1uorfkfao46rxhfsedo6zkd6pg9jpixzllbsujgnw6ggduuudvcznoqz');
define('LOGGED_IN_KEY',    'u8pxn40bt75g296p4vij1eevqdutuavcfhsxm9iaejbvn83nkguprirwxlumjwzg');
define('NONCE_KEY',        'ztaxrf4vbblomy5pgdxms6nabfq9xpvdju4suvwtqww1vffwwbnowx9k8qbgitho');
define('AUTH_SALT',        'kg2r758akj1etg77jp73ow3cbnxzbbndft9da3mc2oudsygpmd6hz03akxyxskrf');
define('SECURE_AUTH_SALT', 'dngigjsge3n1psf1py0uehvpsxllmkmrs2tjh9d6p1bickufyyqwanjgrokeejyc');
define('LOGGED_IN_SALT',   '8nmqz1cgkequyx7n2yqt6ievbz5yqesmgunu7k9yuxmadyyxprdhfofd3gz0liyo');
define('NONCE_SALT',       '4ajlrvbblhtkppumtn6p6sxdwcudl9i2fszqysgtiosfut5wilbbrda5wa7xqy6b');

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
define('WPLANG', 'es_ES');

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
