//
//  Message.swift
//  MamTe
//
//  Created by Jakub Konvička on 02.08.2024.
//

import Foundation


class Message : Identifiable {
    var sender: User
    var recipient: User
    var text: String
    var timestamp: Date
    
    init(sender: User, recipient: User, text: String, timestamp: Date) {
        self.sender = sender
        self.recipient = recipient
        self.text = text
        self.timestamp = timestamp
    }
    
    public func getTimestampFormatted(localeIdentifier: String = "cs_CZ", dateFormat: String = "dd.MM, HH:mm") -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: localeIdentifier)
        formatter.dateFormat = dateFormat
        return formatter.string(from: self.timestamp)
    }
}
