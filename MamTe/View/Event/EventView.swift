//
//  EventView.swift
//  MamTe
//
//  Created by Jakub Konvička on 02.08.2024.
//

import SwiftUI

struct EventView: View {
    private var event : Event
    
    init(){
        self.event = Event(name: "Čaj o páté?", price: 299, dateTime: Date(), description: "Připojte se k nám každý pátek odpoledne na skleničku čaje a přátelskou konverzaci. Těšíme se na setkání s vámi, sdílení příběhů a vytváření nových vztahů. Užijte si u nás příjemnou atmosféru a společnost ostatních seniorů. Zavzpomínejte, poznávejte nové lidi!")
    }
    
    init(event: Event){
        self.event = event
    }
    
    var body: some View {
        VStack(){
            Group(){
                HStack(){
                    Text(event.name)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title2)
                        .fontWeight(.bold)
                        
                    Text(event.getPriceFormatted())
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .font(.headline)
                }
                Text(event.getDateTimeFormatted())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.headline)
                    .padding(.top, 5)
                Text(event.description)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.caption)
                    .padding(.top, 5)
                Button(action: register) {
                    Text("Připojit se")
                        .padding(10)
                        .tint(Color.white)
                        .fontWeight(.bold)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.black)
                        )
                }.frame(maxWidth: .infinity, alignment: .trailing)
            }
            
        }.padding(25)
        .background(
            RoundedRectangle(cornerRadius: 12)
            .fill(Color.getMamTePink())
        )
    }
    
    func register() {
        
    }
}

#Preview {
    EventView()
}
