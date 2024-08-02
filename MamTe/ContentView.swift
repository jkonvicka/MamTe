//
//  ContentView.swift
//  MamTe
//
//  Created by Jakub Konvička on 02.08.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    @State private var selectedIndex: Int = 0
    
    
    var navidationItems: [Int: String] {
         return [
             0: "Zprávy",
             1: "Akce",
             2: "Spojení",
             3: "Můj Profil",
             4: "Nastavení"
         ]
     }

    var body: some View {
        NavigationSplitView {
            TabView(selection: $selectedIndex) {
                        NavigationStack() {
                            ChatsView()
                        }
                        .tabItem {
                            Text("Zprávy")
                            Image(systemName: "message")
                                .renderingMode(.template)
                        }
                        .badge("12")
                        .tag(0)
                
                        NavigationStack() {
                            EventsView()
                        }
                        .tabItem {
                            Text(navidationItems[1]!)
                            Image(systemName: "calendar")
                                .renderingMode(.template)
                        }
                        .badge("3")
                        .tag(1)
                
                        NavigationStack() {
                            ConnectionsView()
                        }
                        .tabItem {
                            Text("Spojení")
                            Image(systemName: "person.line.dotted.person")
                                .renderingMode(.template)
                        }
                        .tag(2)
                        
                        
                        NavigationStack() {
                            Text(navidationItems[3]!)
                                .navigationTitle("Profile")
                        }
                        .tabItem {
                            Label("Můj Profil", systemImage: "person.fill")
                        }
                        .tag(3)
                        
                        NavigationStack() {
                            
                            
                        }
                        .tabItem {
                            Text(navidationItems[4]!)
                            Image(systemName: "gear")

                        }
                        .tag(4)
                    
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                                    Text(navidationItems[selectedIndex]!)
                                        .font(.largeTitle)
                                        .fontWeight(.bold)
                                }
                ToolbarItem {
               
                }
            }
        } detail: {
            Text("Select an item")
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
