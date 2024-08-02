import SwiftUI

struct ChatView: View {
    var chat: Chat
    
    init() {
        let user = User(name: "Alfréd", surname: "", bornDate: Calendar.current.date(byAdding: .year, value: -26, to: Date())!, city: "Random City", tags: [UserTag(label: "Vaření"), UserTag(label: "AZ kvíz junior")], description: "A 26-year-old user.")
        self.chat = Chat(user: user, messages: [Message(sender: user, recipient: user, text: "Ahoj, jak je?", timestamp: Date())])
    }
    
    init(chat: Chat) {
        self.chat = chat
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(alignment: .top, spacing: 10) {
                // Přidání obrázku
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 70)
                    .background(Color.gray.opacity(0.3))
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Text("\(chat.user.name) \(chat.user.surname)")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Text(self.chat.getLastMessage() != nil ? self.chat.getLastMessage()!.getTimestampFormatted() : "")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    Text(chat.getLastMessage() != nil ? chat.getLastMessage()!.text : "")
                        .font(.body)
                        .lineLimit(1)
                        .foregroundColor(.secondary)
                    Button(action: {
                                    // Akce pro otevření chatu
                                }) {
                                    Text("Odpovědět")
                                        .padding(10)
                                        .tint(Color.white)
                                        .fontWeight(.bold)
                                        .background(
                                            RoundedRectangle(cornerRadius: 12)
                                                .fill(Color.black)
                                        )
                                }.frame(maxWidth: .infinity, alignment: .trailing)
                }
            }
        }
        .padding()
        .cornerRadius(12)
        .shadow(radius: 5)
        .background(
            RoundedRectangle(cornerRadius: 12)
            .fill(Color.getMamTePink())
        )
    }
}

#Preview {
    ChatView()
}
