<?php
/** op-app-skeleton-2020-nep:/asset/template/analytics/action.php
 *
 * @creation  2021-05-12
 * @version   1.0
 * @package   op-app-skeleton-2020-nep
 * @author    Tomoaki Nagahara <tomoaki.nagahara@gmail.com>
 * @copyright Tomoaki Nagahara All right reserved.
 */

/** namespace
 *
 */
namespace OP;

/* @var $analytics string */
switch( $analytics ){
	case 'google':
		$path .= '/analytics.phtml';
		break;

	default:
		$path .= '.phtml';
		break;
}

//	...
Template($path);
