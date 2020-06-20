import XCTest
@testable import Tapa

final class TapaTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Tapa().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
