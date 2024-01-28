import SnapshotTesting
import SwiftUI
import XCTest

@testable import Recipes

final class RecipesTests: XCTestCase {
    func testSnapshot() {
        let view = NavigationStack {
            RecipesView()
        }
        
        assertSnapshot(of: view, as: .image)
    }
}
