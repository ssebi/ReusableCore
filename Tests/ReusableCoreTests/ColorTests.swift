import XCTest
@testable import ReusableCore

final class ColorTests: XCTestCase {
    func testColorRedEqual() {
        let color = ReusableCore.Color.fromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }

    func testRazeColorsAreEqual() {
        let color = ReusableCore.Color.fromHexString("006736")
        XCTAssertEqual(color, ReusableCore.Color.razeColor)
    }

    func testSecondaryRazeColorsAreEqual() {
        let color = ReusableCore.Color.fromHexString("FCFFFD")
        XCTAssertEqual(color, ReusableCore.Color.secondaryRazeColor)
    }

    static var allTests = [
        ("testColorRedEqual", testColorRedEqual),
        ("testRazeColorsAreEqual", testRazeColorsAreEqual),
        ("testSecondaryRazeColorsAreEqual", testSecondaryRazeColorsAreEqual)
    ]
}
