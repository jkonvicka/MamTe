import SwiftUI

struct EventsView: View {
    var events: [Event]
    
    init() {
        events = [
            Event(name: "Čaj o páté?", price: 299, dateTime: Date(), description: "Připojte se k nám každý pátek odpoledne na skleničku čaje a přátelskou konverzaci. Těšíme se na setkání s vámi, sdílení příběhů a vytváření nových vztahů. Užijte si u nás příjemnou atmosféru a společnost ostatních seniorů. Zavzpomínejte, poznávejte nové lidi!"),
            Event(name: "Hudební večer", price: 499, dateTime: Date().addingTimeInterval(86400), description: "Přijďte si užít večer plný hudby a tance. Skvělá příležitost strávit příjemný čas s přáteli a rodinou."),
            Event(name: "Workshopy vaření", price: 599, dateTime: Date().addingTimeInterval(2 * 86400), description: "Naučte se nové recepty a triky v kuchyni od našich špičkových kuchařů. Perfektní pro všechny, kteří chtějí zlepšit své kuchařské dovednosti."),
            Event(name: "Procházka přírodou", price: 199, dateTime: Date().addingTimeInterval(3 * 86400), description: "Připojte se k nám na procházku krásnou přírodou a užijte si čerstvý vzduch. Skvělá příležitost pro relaxaci a objevování nových míst."),
            Event(name: "Literární večer", price: 299, dateTime: Date().addingTimeInterval(4 * 86400), description: "Přijďte si poslechnout čtení z knih našich oblíbených autorů. Diskuse o knihách a literatuře."),
            Event(name: "Malování pro radost", price: 399, dateTime: Date().addingTimeInterval(5 * 86400), description: "Vyzkoušejte si různé techniky malování a tvořte umění pro radost. Vhodné pro začátečníky i pokročilé."),
            Event(name: "Filmový večer", price: 149, dateTime: Date().addingTimeInterval(6 * 86400), description: "Užijte si projekci klasických i moderních filmů. Popcorn a nápoje jsou zajištěny."),
            Event(name: "Hra na kytaru", price: 349, dateTime: Date().addingTimeInterval(7 * 86400), description: "Naučte se základy hry na kytaru nebo si zdokonalte své dovednosti pod vedením zkušeného učitele."),
            Event(name: "Zahradničení", price: 199, dateTime: Date().addingTimeInterval(8 * 86400), description: "Přijďte se naučit, jak pečovat o zahradu a pěstovat vlastní bylinky a květiny. Vhodné pro všechny milovníky přírody."),
            Event(name: "Historická přednáška", price: 249, dateTime: Date().addingTimeInterval(9 * 86400), description: "Poslechněte si zajímavé přednášky o historických událostech a osobnostech. Diskuse a otázky vítány."),
            Event(name: "Kavárenské posezení", price: 99, dateTime: Date().addingTimeInterval(10 * 86400), description: "Připojte se k nám na příjemné posezení u kávy a dezertu. Skvělá příležitost k setkání s přáteli."),
            Event(name: "Jóga pro seniory", price: 299, dateTime: Date().addingTimeInterval(11 * 86400), description: "Uvolněte se a protáhněte své tělo na lekci jógy speciálně přizpůsobené pro seniory. Vhodné pro všechny úrovně zkušeností."),
            Event(name: "Fotografování přírody", price: 399, dateTime: Date().addingTimeInterval(12 * 86400), description: "Naučte se, jak zachytit krásu přírody skrze objektiv fotoaparátu. Workshop pro všechny úrovně."),
            Event(name: "Kurz keramiky", price: 499, dateTime: Date().addingTimeInterval(13 * 86400), description: "Vyzkoušejte si práci s keramickou hlínou a vytvořte si vlastní originální výrobky. Vhodné pro začátečníky i pokročilé."),
            Event(name: "Cvičení paměti", price: 299, dateTime: Date().addingTimeInterval(14 * 86400), description: "Posilněte svou paměť a mentální schopnosti na interaktivním cvičení. Zábavné a poučné aktivity.")
        ]

    }
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(events) { event in
                    EventView(event: event)
                }
            }.padding(10)
        }
    }
}

#Preview {
    EventsView()
}
