/**
* Fraction.swift
* Defines a class that will allow for fraction
* math (i.e. showing 3/4, 1/2, mixed numbers such as 1 1/3, etc.)
*/

public class Fraction {
	var numer: Int
	var denom: Int

	/**
	* init fraction from a single integer
	*/
	public convenience init(_ i: Int) {
		self.init(n: i, d: 1)
	}

	/**
	* init fraction from a numerator
	* and a denominator
	*/
	public init(n: Int,d: Int) {
		self.numer = n
		self.denom = d

		// get the params into correct form
		reduce()
	}

	// helper methods
	// greatest common divisor, used to reduce fractions to 
	// lowest terms
	private func gcd(numer:Int, denom:Int) -> (Int,Int) {
		// lets get the greatest common
		// denominator
		var a = numer
		var b = denom

		//GCD(a,b) = GCD(b,a%b)
		// stop when a%b hits zero, and return b
		while b > 0 {
			let remainder = a % b
			a = b
			b = remainder
		}
		return (numer: numer / a, denom: denom / a )
	}

	// reduce the fraction
	private func reduce() {
		(numer,denom) = gcd(numer: numer, denom:denom)
	}

	/**
	 * convert Fraction to String
	 * for printing
	 */
	public func toString() -> String {
		if denom == 1 {
			return "\(numer)"
		} else {
			return "\(numer)"+"/"+"\(denom)"
		}
	}
}