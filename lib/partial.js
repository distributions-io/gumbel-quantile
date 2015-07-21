'use strict';

// FUNCTIONS //


// PARTIAL //

/**
* FUNCTION: partial( mu, beta )
*	Partially applies location parameter `mu` and scale parameter `beta` and returns a function for evaluating the quantile function for a Gumbel distribution.
*
* @param {Number} mu - location parameter
* @param {Number} beta - scale parameter
* @returns {Function} quantile function
*/
function partial( mu, beta ) {

	/**
	* FUNCTION: quantile( p )
	*	Evaluates the quantile function for a Gumbel distribution.
	*
	* @private
	* @param {Number} p - input value
	* @returns {Number} evaluated quantile function
	*/
	return function quantile( p ) {
		if ( p !== p || p < 0 || p > 1 ) {
			return NaN;
		}
	};
} // end FUNCTION partial()


// EXPORTS //

module.exports = partial;
