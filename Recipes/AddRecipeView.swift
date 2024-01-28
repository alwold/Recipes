//

import SwiftUI

struct AddRecipeView: View {
    var body: some View {
        Text("This is where you'll be able to add a recipe")
            .navigationTitle("Add Recipe")
    }
}

#Preview {
    NavigationStack {
        AddRecipeView()
    }
}
