//
//  UserTag.swift
//  MamTe
//
//  Created by Jakub Konvička on 02.08.2024.
//

import Foundation


class UserTag : Identifiable {
    var label: String
    
    init(label: String) {
        self.label = label
    }
}
