import XCTest

class XCUIExampleUITests: XCTestCase {

    func testAddDates() {
        let app = XCUIApplication()
        app.launch()
        let plus = app.navigationBars.buttons["plus"]
        for _ in 1...3 {
            plus.tap()
            sleep(1)
        }
        XCTAssert(app.tables.descendants(matching: .button).count == 3)
    }
}
