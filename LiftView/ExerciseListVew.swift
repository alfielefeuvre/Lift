//
//  ExerciseVew.swift
//  Lift
//
//  Created by Alfie Le Feuvre on 13/03/2025.
//

import SwiftUI

struct ExerciseListView: View {
    let exerciseStats: [ExerciseStat]
    
    var body: some View {
         List{
            ForEach(exerciseStats) { exercise in
                VStack {
                    ExerciseCard(exercise: exercise)
              }
            }
        }
    }
}

struct ExerciseCard: View {
    let exercise: ExerciseStat
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(exercise.name).font(.headline)
                HStack {
                    Image("deadlift")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(Capsule())
                    VStack(alignment: .leading) {
                        Text("Sets: \(exercise.sets)")
                        Text("Reps: \(exercise.reps)")
                        Text("Weight: \(exercise.weightKg, specifier: "%.1f")kg")
                    }
                }
            }

            Spacer()
        }
    }
}
