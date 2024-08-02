//
//  Item.swift
//  MamTe
//
//  Created by Jakub Konvička on 02.08.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
