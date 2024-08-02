import SwiftUI

struct ConnectionView: View {
    var user: User
    var agreement: Int
    
    init() {
        self.agreement = 74;
        self.user = User(name: "Alfréd", surname: "", bornDate: Calendar.current.date(byAdding: .year, value: -26, to: Date())!, city: "Ostrava", tags: [UserTag(label: "Vaření"), UserTag(label: "AZ kvíz junior")], description: "A 26-year-old user.")
    }
    
    init(user: User, agreement: Int){
        self.user = user
        self.agreement = agreement
    }
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .scaledToFit()
                    .background(Color.gray.opacity(0.3))
                    .clipShape(Circle())
                    .cornerRadius(12)
                    .shadow(radius: 5)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.white)
                    )
            }
            
            VStack(alignment: .leading) {
                Text("SHODA \(self.agreement) %")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(10)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                
                
                Text(self.user.getTags())
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 15)
                    .padding(.top, 5)
                
                Text(self.user.description)
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 15)
                    .padding(.top, 5)
                
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
                    .padding(.trailing, 10)
                    .padding(.bottom, 10)
                
            }
                .padding(.trailing, 10)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.getMamTePink())
                )
                .padding(.top, -15)
                
            
            VStack(alignment: .leading) {
                Text("\(user.name.uppercased())    \(user.getAge())")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                Text(user.city)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding(10)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color(hex: "CA4F4F"))
            )
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 15)
            .padding(.top, -195)
            
           
        }
        
    }
}

#Preview {
    ConnectionView()
}
