<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'stellar_cat' );

/** Database username */
define( 'DB_USER', 'stellar_cat' );

/** Database password */
define( 'DB_PASSWORD', 'stellar_cat' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '6;WeaUWpPhxHIc=!Fz>-.Y?yxmzr#-&S&TD@bo+GO*9Te]e2<ZTQx!=%[1_6/6#o' );
define( 'SECURE_AUTH_KEY',  '|po%!SaR0Lqz!D{@]oR4ajXA|d/O Uhge,B^gms!Eme#^l]FDv`}>>b_m|#CM3%=' );
define( 'LOGGED_IN_KEY',    'z{A43^zu!A3D|k_V8}(|&%AL*]|qFw|b]NQXs9I|hIYtO48;S[E`Ks}}J}y/5s9B' );
define( 'NONCE_KEY',        'h1ZtZstWhf&aTTvOVBiN^g{n6iZu(u~%%?>Z<(9TI d8f-[SM JkC;YtR)Vy<1Iq' );
define( 'AUTH_SALT',        'Fvk;_u4**ycHVH>(F%/V1-j.I>8X#g^R3 %]WSy~d+$y{yt:*+6{_YNa/%i e=)@' );
define( 'SECURE_AUTH_SALT', 'BE7g?f=}rAZ#*&&M[DQ9#;)P$U`544S+<cc9>#h`Y[((CJc,F!S,{=`,i6;Ep6($' );
define( 'LOGGED_IN_SALT',   'u%6d%^9?Q[YJon6/CKuld^/W=lvkHA&ZW>F8*6~uu3B`b{uP6iD+@dFWz-WMU;jF' );
define( 'NONCE_SALT',       'QjMdGg7iO{oE#C]lLJ1jenmCW1Q)zagwH={hWX|^ekK;Gxb{E o<xT&fC6gP#62I' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_stellar_cat';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

