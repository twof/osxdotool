import XCTest
import osxdotoolCore

class HelperTests: XCTestCase {
    func testKeycode() {
        XCTAssert(Key.a.code == 0)
    }

    static var allTests = [
        ("testKeycode", testKeycode),
    ]
}
