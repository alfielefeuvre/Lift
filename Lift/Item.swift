//
//  Item.swift
//  Lift
//
//  Created by Alfie Le Feuvre on 13/03/2025.
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
