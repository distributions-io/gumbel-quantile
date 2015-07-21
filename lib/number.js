'use strict';

// FUNCTIONS //


// QUANTILE //

/**
* FUNCTION: quantile( p, mu, beta )
*	Evaluates the quantile function for a Gumbel distribution with location parameter `mu` and scale parameter `beta` at a probability `p`.
*
* @param {Number} p - input value
* @param {Number} mu - location parameter
* @param {Number} beta - scale parameter
* @returns {Number} evaluated quantile function
*/
function quantile( p, mu, beta ) {
	if ( p !== p || p < 0 || p > 1 ) {
		return NaN;
	}
} // end FUNCTION quantile()


// EXPORTS //

module.exports = quantile;
