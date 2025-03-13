//
//  ExerciseStat.swift
//  Lift
//
//  Created by Alfie Le Feuvre on 13/03/2025.
//

import Foundation
import SwiftData
import SwiftUI

@Model
class ExerciseStat: Comparable {
    var name: String = "n/a"
    var sets: Int = 0
    var reps: Int = 0
    var percentage: Double = 0
    var weightKg: Double = 0
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var liftSession: LiftSession?

    init(name: String, sets: Int, reps: Int, percentage: Double, weightKg: Double, imageName: String) {
        self.name = name
        self.sets = sets
        self.reps = reps
        self.weightKg = weightKg
        self.imageName = imageName
    }
    
    static func <(lhs: ExerciseStat, rhs: ExerciseStat) -> Bool {
        lhs.name < rhs.name
    }
    
    static func == (lhs: ExerciseStat, rhs: ExerciseStat) -> Bool {
        lhs.name == rhs.name
    }
}
