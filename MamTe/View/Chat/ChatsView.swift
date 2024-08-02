import SwiftUI

struct ChatsView: View {
    var chats: [Chat]
    
    init() {
        self.chats = [
            Chat(user: User(name: "Eva", surname: "Nováková", bornDate: Calendar.current.date(byAdding: .year, value: -34, to: Date())!, city: "Praha", tags: [UserTag(label: "Kino"), UserTag(label: "Cestování")], description: "Milovnice filmů a dobrodružných cest."), messages: [Message(sender: User(name: "Eva", surname: "Nováková", bornDate: Calendar.current.date(byAdding: .year, value: -34, to: Date())!, city: "Praha", tags: [UserTag(label: "Kino"), UserTag(label: "Cestování")], description: "Milovnice filmů a dobrodružných cest."), recipient: User(name: "Eva", surname: "Nováková", bornDate: Calendar.current.date(byAdding: .year, value: -34, to: Date())!, city: "Praha", tags: [UserTag(label: "Kino"), UserTag(label: "Cestování")], description: "Milovnice filmů a dobrodružných cest."), text: "Ahoj", timestamp: Date())]),
            
            Chat(user: User(name: "Jakub", surname: "Horák", bornDate: Calendar.current.date(byAdding: .year, value: -38, to: Date())!, city: "Brno", tags: [UserTag(label: "Sport"), UserTag(label: "Kuchařství")], description: "Zarytý sportovec a nadšený kuchař."), messages: [Message(sender: User(name: "Jakub", surname: "Horák", bornDate: Calendar.current.date(byAdding: .year, value: -38, to: Date())!, city: "Brno", tags: [UserTag(label: "Sport"), UserTag(label: "Kuchařství")], description: "Zarytý sportovec a nadšený kuchař."), recipient: User(name: "Jakub", surname: "Horák", bornDate: Calendar.current.date(byAdding: .year, value: -38, to: Date())!, city: "Brno", tags: [UserTag(label: "Sport"), UserTag(label: "Kuchařství")], description: "Zarytý sportovec a nadšený kuchař."), text: "Připravuju se na to!", timestamp: Date())]),
            
            Chat(user: User(name: "Lucie", surname: "Černá", bornDate: Calendar.current.date(byAdding: .year, value: -29, to: Date())!, city: "Ostrava", tags: [UserTag(label: "Hudba"), UserTag(label: "Vzdělávání")], description: "Hudební nadšenec a zapálená učitelka."), messages: [Message(sender: User(name: "Lucie", surname: "Černá", bornDate: Calendar.current.date(byAdding: .year, value: -29, to: Date())!, city: "Ostrava", tags: [UserTag(label: "Hudba"), UserTag(label: "Vzdělávání")], description: "Hudební nadšenec a zapálená učitelka."), recipient: User(name: "Lucie", surname: "Černá", bornDate: Calendar.current.date(byAdding: .year, value: -29, to: Date())!, city: "Ostrava", tags: [UserTag(label: "Hudba"), UserTag(label: "Vzdělávání")], description: "Hudební nadšenec a zapálená učitelka."), text: "Nevím o tom, ale klidně se na to můžu podívat", timestamp: Date())]),
            
            Chat(user: User(name: "Petr", surname: "Novotný", bornDate: Calendar.current.date(byAdding: .year, value: -41, to: Date())!, city: "Plzeň", tags: [UserTag(label: "Technologie"), UserTag(label: "Cestování")], description: "Technologický geek s vášní pro cestování."), messages: [Message(sender: User(name: "Petr", surname: "Novotný", bornDate: Calendar.current.date(byAdding: .year, value: -41, to: Date())!, city: "Plzeň", tags: [UserTag(label: "Technologie"), UserTag(label: "Cestování")], description: "Technologický geek s vášní pro cestování."), recipient: User(name: "Petr", surname: "Novotný", bornDate: Calendar.current.date(byAdding: .year, value: -41, to: Date())!, city: "Plzeň", tags: [UserTag(label: "Technologie"), UserTag(label: "Cestování")], description: "Technologický geek s vášní pro cestování."), text: "Čím víc lidí, tím lépe.", timestamp: Date())]),
            
            Chat(user: User(name: "Martina", surname: "Králová", bornDate: Calendar.current.date(byAdding: .year, value: -24, to: Date())!, city: "Liberec", tags: [UserTag(label: "Fitness"), UserTag(label: "Čtení")], description: "Fitness nadšenec a vášnivá čtenářka."), messages: [Message(sender: User(name: "Martina", surname: "Králová", bornDate: Calendar.current.date(byAdding: .year, value: -24, to: Date())!, city: "Liberec", tags: [UserTag(label: "Fitness"), UserTag(label: "Čtení")], description: "Fitness nadšenec a vášnivá čtenářka."), recipient: User(name: "Martina", surname: "Králová", bornDate: Calendar.current.date(byAdding: .year, value: -24, to: Date())!, city: "Liberec", tags: [UserTag(label: "Fitness"), UserTag(label: "Čtení")], description: "Fitness nadšenec a vášnivá čtenářka."), text: "V kině zítra dávají film V hlavě 2, půjdeme?", timestamp: Date())])
                 
                 
        ]

    }
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(chats) { chat in
                    ChatView(chat: chat)
                    
                }
            }.padding(10)
        }
    }
}

#Preview {
    ChatsView()
}
