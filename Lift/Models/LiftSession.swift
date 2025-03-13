//
//  LiftSession.swift
//  Lift
//
//  Created by Alfie Le Feuvre on 13/03/2025.
//

import Foundation
import SwiftUI

struct LiftSession: Identifiable, Codable {
    var id: Int
    var name: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
}
