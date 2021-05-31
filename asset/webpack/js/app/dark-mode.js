
/** op-app-skeleton-2021-nep:/asset/webpack/js/app/dark-mode.js
 *
 * @created   2019-11-19
 * @moved     2021-05-31 from op-module-webpack:/js/app/dark-mode.js
 * @version   1.0
 * @package   op-module-webpack
 * @author    Tomoaki Nagahara <tomoaki.nagahara@gmail.com>
 * @copyright Tomoaki Nagahara All right reserved.
 */

/** Dark mode control for JavaScript.
 *
 * @see https://www.webcreatorbox.com/tech/dark-mode
 */

//	...
const darkModeMediaQuery = window.matchMedia('(prefers-color-scheme: dark)');
const darkModeOn = darkModeMediaQuery.matches;

//	...
darkModeMediaQuery.addListener((e) => {
	const darkModeOn = e.matches;
	if( darkModeOn ){
		// Dark mode.
		document.body.classList.remove('light-theme');
		document.body.classList.add('dark-theme');
	}else{
		// Light mode.
		document.body.classList.remove('dark-theme');
		document.body.classList.add('light-theme');
	}
});
