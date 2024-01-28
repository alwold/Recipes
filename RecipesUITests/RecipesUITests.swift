import XCTest

final class RecipesUITests: XCTestCase {
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        app = XCUIApplication()
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()

        app.terminate()
        app = nil
    }
    
    func testAddRecipe() {
        // wait for the sample recipe to be visible (in a fragile way :))
        XCTAssert(app.staticTexts["Created 1/28/2024, 2:08 PM"].waitForExistence(timeout: 5))
        
        // tap on the add button
        app.buttons["Add Recipe"].tap()
        
        // make sure the add recipe screen is shown
        XCTAssert(app.staticTexts["Add Recipe"].waitForExistence(timeout: 5))
    }
}
