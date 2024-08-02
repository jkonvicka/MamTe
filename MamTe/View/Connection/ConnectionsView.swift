//
//  ConnectionsView.swift
//  MamTe
//
//  Created by Jakub Konvička on 02.08.2024.
//

import Foundation


import SwiftUI

struct ConnectionsView: View {
    var users: [User]
    
    init() {
    let names = ["Jan", "Petr", "Josef", "Martin", "Jaroslav", "Tomáš", "Miroslav", "Zdeněk", "Frantisek", "Milan", "Karel", "Ladislav", "Jiri", "Marek", "Lukas"]
        let surnames = ["Novak", "Svoboda", "Novotny", "Dvorak", "Cerny", "Prochazka", "Kucera", "Vesely", "Horak", "Nemec", "Marek", "Pokorny", "Kolar", "Hajek", "Kratochvil"]
        let cities = ["Prague", "Brno", "Ostrava", "Plzen", "Liberec", "Olomouc", "Ceske Budejovice", "Hradec Kralove", "Usti nad Labem", "Pardubice"]
        let tags = [UserTag(label: "Active"), UserTag(label: "Friendly"), UserTag(label: "Adventurous"), UserTag(label: "Creative"), UserTag(label: "Determined")]

    self.users = [User]()
        for _ in 0..<15 {
            let name = names.randomElement()!
            let surname = surnames.randomElement()!
            let city = cities.randomElement()!
            let bornDate = Calendar.current.date(byAdding: .year, value: -Int.random(in: 18...50), to: Date())!
            let userTags = Array(tags.shuffled().prefix(Int.random(in: 1...3)))
            let description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."

            let user = User(name: name, surname: surname, bornDate: bornDate, city: city, tags: userTags, description: description)
            users.append(user)
        }
        
    }
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(users) { user in
                    ConnectionView(user: user, agreement: Int.random(in: 52 ... 100))
                    
                }
            }.padding(10)
        }
    }
}

#Preview {
    ConnectionsView()
}

