import SwiftUI

struct RecipesView: View {
    @State var recipes: [Recipe] = [.sample]
    
    var body: some View {
        List(recipes) { recipe in
            VStack(alignment: .leading) {
                Text(recipe.name)
                Text("Created \(recipe.created.formatted())")
                    .font(.caption)
            }
        }
        .navigationTitle("Recipes")
        .toolbar(content: {
            NavigationLink {
                AddRecipeView()
            } label: {
                Image(systemName: "plus")
                    .accessibilityLabel("Add Recipe")
            }
        })
    }
}

#Preview {
    NavigationStack {
        RecipesView()
    }
}
