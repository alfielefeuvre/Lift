//
//  LiftSession.swift
//  Lift
//
//  Created by Alfie Le Feuvre on 13/03/2025.
//

import Foundation
import SwiftUI
import SwiftData

@Model
class LiftSession: Comparable, Identifiable {
    var id: Int
    var name: String
    var progress: Int = 0
    var dueDate: Date = Date() - 10_000_000_000
    var completedDate: Date = Date() - 10_000_000_010
    
    @Relationship(deleteRule: .cascade, inverse: \ExerciseStat.liftSession) var exerciseStats: [ExerciseStat]? = []
 
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    init(id: Int = 0, name: String = "n/a", imageName: String = "n/a", exerciseStats: [ExerciseStat]? = []) {
        self.id = id
        self.name = name
        self.imageName = imageName
        self.exerciseStats = exerciseStats
    }
    
    static func <(lhs: LiftSession, rhs: LiftSession) -> Bool {
        return lhs.name < rhs.name
    }
}

extension ContentView2 {
    func updateDemoData() {
        demoLiftSessions = [
            LiftSession(id: 001, name: "Upper 1", imageName: "benchpress",
                        exerciseStats: [
                            ExerciseStat(name: "Bench Press",       sets: 4, reps: 8, percentage: 60, weightKg: 51.5, imageName: "benchpress"),
                            ExerciseStat(name: "Bench Press",       sets: 1, reps: 15, percentage: 50, weightKg: 42.9, imageName: "benchpress"),
                            ExerciseStat(name: "Chest Supt Row",    sets: 4, reps: 10, percentage: 62, weightKg: 53.3, imageName: "suptrow"),
                            ExerciseStat(name: "Seated OH Press",   sets: 3, reps: 10, percentage: 64, weightKg: 30.0, imageName: "ohpress"),
                            ExerciseStat(name: "Chin-up",            sets: 3, reps: 7, percentage: 65, weightKg: 71.7, imageName: "chinup"),
                            ExerciseStat(name: "Lateral Raise",     sets: 3, reps: 8, percentage: 0, weightKg: 2.75, imageName: "benchpress"),
                     ]),
            LiftSession(id: 002, name: "Lower 1", imageName: "squat",
                        exerciseStats: [
                            ExerciseStat(name: "Back Squat",        sets: 4, reps: 8, percentage: 64, weightKg: 55, imageName: "squat"),
                            ExerciseStat(name: "Back Squat",        sets: 1, reps: 15, percentage: 54, weightKg: 46.4, imageName: "squat"),
                            ExerciseStat(name: "Dead Lift",         sets: 4, reps: 8, percentage: 83, weightKg: 72.6, imageName: "deadlift"),
                            ExerciseStat(name: "Touch Downs",       sets: 3, reps: 20, percentage: 0, weightKg: 20, imageName: "benchpress"),
                     ]),
            LiftSession(id: 003, name: "Upper 2", imageName: "ohpress",
                        exerciseStats: [
                            ExerciseStat(name: "Overhead Press",    sets: 4, reps: 8, percentage: 60, weightKg: 28.1, imageName: "ohpress"),
                            ExerciseStat(name: "Overhead Press",    sets: 4, reps: 8, percentage: 50, weightKg: 23.4, imageName: "ohpress"),
                            ExerciseStat(name: "Chin-up",            sets: 4, reps: 7, percentage: 65, weightKg: 71.7, imageName: "chinup"),
                            ExerciseStat(name: "Inc Bench Press",   sets: 3, reps: 8, percentage: 55, weightKg: 47.2, imageName: "benchpress"),
                            ExerciseStat(name: "Chest Supt Row",    sets: 3, reps: 8, percentage: 55, weightKg: 47.3, imageName: "suptrow"),
                            ExerciseStat(name: "Lateral Raise",     sets: 3, reps: 14, percentage: 0, weightKg: 2.75, imageName: "benchpress"),
                     ]),
            LiftSession(id: 004, name: "Lower 2", imageName: "deadlift",
                        exerciseStats: [
                            ExerciseStat(name: "Dead Lift",         sets: 4, reps: 8, percentage: 88, weightKg: 76.9, imageName: "deadlift"),
                            ExerciseStat(name: "Dead Lift",         sets: 1, reps: 15, percentage: 78, weightKg: 68.2, imageName: "deadlift"),
                            ExerciseStat(name: "Back Squat",        sets: 4, reps: 8, percentage: 64, weightKg: 55, imageName: "squat"),
                            ExerciseStat(name: "Touch Downs",       sets: 3, reps: 20, percentage: 0, weightKg: 20, imageName: "benchpress"),
                     ])
        ]
    }
    
    
}



