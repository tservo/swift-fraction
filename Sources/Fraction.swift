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
	public init(_ i: Int) {
		self.numer = i
		self.denom = 1
	}

	/**
	* init fraction from a numerator
	* and a denominator
	*/
	public init(n: Int,d: Int) {
		self.numer = n
		self.denom = d
	}

	/**
	 * convert Fraction to String
	 * for printing
	 */
	func toString() -> String {
		return "\(numer)"+"/"+"\(denom)"
	}
}