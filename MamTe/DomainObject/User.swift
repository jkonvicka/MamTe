//
//  User.swift
//  MamTe
//
//  Created by Jakub Konvička on 02.08.2024.
//

import Foundation

class User: Identifiable {
    var id = UUID() // Assuming Identifiable requires an id
    var name: String
    var surname: String
    var bornDate: Date
    var city: String
    var tags: [UserTag]
    var description: String
    
    init(name: String, surname: String, bornDate: Date, city: String, tags: [UserTag], description: String) {
        self.name = name
        self.surname = surname
        self.bornDate = bornDate
        self.city = city
        self.tags = tags
        self.description = description
    }
    
    func getAge() -> Int {
        let calendar = Calendar.current
        let now = Date()
        
        let ageComponents = calendar.dateComponents([.year], from: bornDate, to: now)
        return ageComponents.year ?? 0
    }
    
    func getTags() -> String {
        return tags.map { $0.label.uppercased() }.joined(separator: ", ")
    }
}
