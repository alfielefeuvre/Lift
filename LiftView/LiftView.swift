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
                        Text("session")
                    }
                    
                    //NavigationLink { LessonView(lesson: lesson)} label: { LessonItem(lesson: lesson) }
            
                }
                
                 
                
                
            }.navigationTitle("Lift Workout")
        }
    }
}
