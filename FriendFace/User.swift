
import Foundation

struct User: Codable, Identifiable {
    let id: UUID
    let isActive: Bool
    let name: String
    let age: Int
    let company: String
    let email: String
    let address: String
    let about: String
    let registered: Date
    let tags: [String]
    let friends: [Friend]
    
    static let example = User(id: UUID(), isActive: true, name: "Bob", age: 102, company: "retired", email: "bob@bob.com", address: "123 Main Street USA", about: "I'm Bob.", registered: Date.now, tags: ["Swift", "SwiftUI"], friends: [])
}
