import XCTest
@testable import ReusableCore

final class ReusableCoreTests: XCTestCase {
    func testColorRedEqual() {
        let color = ReusableCore.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }

    func testRazeColorsAreEqual() {
        let color = ReusableCore.colorFromHexString("006736")
        XCTAssertEqual(color, ReusableCore.razeColor)
    }

    func testSecondaryRazeColorsAreEqual() {
        let color = ReusableCore.colorFromHexString("FCFFFD")
        XCTAssertEqual(color, ReusableCore.secondaryRazeColor)
    }

    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
        ("testRazeColorsAreEqual", testRazeColorsAreEqual),
        ("testSecondaryRazeColorsAreEqual", testSecondaryRazeColorsAreEqual)
    ]
}
