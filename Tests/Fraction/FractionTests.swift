import Fraction
import XCTest
import Foundation


class FractionTests: XCTestCase {

	// useful Fraction classes
	let fracs = [
		Fraction(5), // from integer
		Fraction(n:3,d:5), // from num,denom
		Fraction(n:2,d:4) // not reduced fraction
	]

	func testInstantiation() {
		XCTAssertTrue(fracs[0] is Fraction,"Unable to instantiate Fraction(int)")
		XCTAssertTrue(fracs[1] is Fraction,"Unable to instantiate Fraction(n:int,d:int)")
	}

	func testPrintoutString() {

		let fractionStrings = [
			"5", // integer
			"3/5", // numer,denom
			"1/2", // reduced
		]
		
		for (index,fraction) in fracs.enumerated() {
			let fracString = fraction.toString()
			let expectedString = fractionStrings[index]
			XCTAssertEqual(fracString,expectedString,
				fracString + " is not equal to " + expectedString)
		}

		
		
	}
}