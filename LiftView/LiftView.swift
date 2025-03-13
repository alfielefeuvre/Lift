//
//  LiftView.swift
//  Lift
//
//  Created by Alfie Le Feuvre on 13/03/2025.
//

import SwiftUI

struct LiftView: View {
    let liftSessions: [LiftSession]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(liftSessions) { session in
                    Section(session.name) {
                        VStack {
                            NavigationLink { ExerciseListView(exerciseStats: session.exerciseStats ?? []) } label: { LiftSessionCard(liftSession: session) }
                        }
                    }
                }
            }.navigationTitle("Lift Workouts")
        }
    }
}

struct LiftSessionCard: View {
    let liftSession: LiftSession
    
    var body: some View {
        HStack {
            VStack {
                Text("Progress")
                Text("\(liftSession.progress)%")
                Text("\(liftSession.exerciseStats?.count ?? 0)")
            }
            Image(liftSession.imageName)
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Capsule())
            Spacer()
        }
    }
}
