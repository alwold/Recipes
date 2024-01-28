import Foundation

struct Recipe: Identifiable {
    let created: Date
    let name: String
    let id: UUID
}

extension Recipe {
    static var sample: Recipe {
        let components = DateComponents(timeZone: .gmt, year: 2024, month: 1, day: 28, hour: 21, minute: 8, second: 0)
        let created = Calendar.current.date(from: components)!
        return Recipe(created: created, name: "Chicken soup", id: UUID())
    }
}
