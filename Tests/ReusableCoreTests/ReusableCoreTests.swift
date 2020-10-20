import XCTest
@testable import ReusableCore

final class ReusableCoreTests: XCTestCase {
    func testColorRedEqual() {
        let color = ReusableCore.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }

    func testReusableColorAreEqual() {
        let color = ReusableCore.colorFromHexString("006736")
        XCTAssertEqual(color, ReusableCore.razeColor)
    }

    static var allTests = [
        ("testColorRedEqual", testColorRedEqual)
    ]
}
