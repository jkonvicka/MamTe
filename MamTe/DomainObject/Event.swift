//
//  Event.swift
//  MamTe
//
//  Created by Jakub Konvička on 02.08.2024.
//

import Foundation


class Event : Identifiable {
    public var name: String
    public var price: Double
    public var currencyCode: String
    public var dateTime : Date
    public var description: String
    
    init(name: String, price: Double, dateTime: Date, description: String) {
        self.name = name
        self.price = price
        self.currencyCode = "Kč"
        self.dateTime = dateTime
        self.description = description
    }
    
    public func getPriceFormatted() -> String {
        return "\(self.price) \(self.currencyCode)"
    }
    
    public func getDateTimeFormatted(localeIdentifier: String = "cs_CZ", dateFormat: String = "EEEE, d. MMMM, HH:mm") -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: localeIdentifier)
        formatter.dateFormat = dateFormat
        return formatter.string(from: self.dateTime)
    }
    
    
}
