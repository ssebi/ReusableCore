import XCTest
@testable import ReusableCore

final class ReusableCoreTests: XCTestCase {
    func testColorRedEqual() {
        let color = ReusableCore.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }

    static var allTests = [
        ("testColorRedEqual", testColorRedEqual)
    ]
}
