//
//  Chat.swift
//  MamTe
//
//  Created by Jakub Konvička on 02.08.2024.
//

import Foundation


class Chat : Identifiable {
    var user: User
    var messages: [Message]
    
    init(user: User, messages: [Message]) {
        self.user = user
        self.messages = messages
    }
    
    func getLastMessage() -> Message? {
        return messages.last
    }
}
