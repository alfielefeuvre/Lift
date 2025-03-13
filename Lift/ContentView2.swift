//
//  ContentView.swift
//  Lift
//
//  Created by Alfie Le Feuvre on 13/03/2025.
//

import SwiftUI
import SwiftData

struct ContentView2: View {
    @State private var selection = 5
  
    @State var demoLiftSessions: [LiftSession] = []

    var body: some View {
        TabView(selection:$selection) {
            FoodView()
                .tabItem{ Label("Food & Drink", systemImage: "fork.knife") } .tag(1)
            
            TrackingView()
                .tabItem{ Label("Progress", systemImage: "chart.line.uptrend.xyaxis") } .tag(2)

            LearnView()
                .tabItem{ Label("Learn", systemImage: "book") } .tag(3)
        
            SprintView()
                .tabItem{ Label("HIIT", systemImage: "figure.highintensity.intervaltraining") } .tag(4)
            
            LiftView(liftSessions: demoLiftSessions)
                .tabItem{ Label("Lift", systemImage: "dumbbell") } .tag(5)
        }
        .onAppear{ updateDemoData() }       // LiftSession - Models
        .navigationViewStyle(.stack)
       
    }
}





#Preview {
    ContentView2()
//        .modelContainer(for: Item.self, inMemory: true)
}


struct FoodView: View {
    var body: some View {
        NavigationView {
            List {  Text("Coming Soon!")
            }.navigationTitle("Food & Drink")
        }
    }
}

struct TrackingView: View {
    var body: some View {
        NavigationView {
            List {  Text("Coming Soon!")
            }.navigationTitle("Progress")
        }
    }
}

struct LearnView: View {
    var body: some View {
        NavigationView {
            List {  Text("Coming Soon!")
            }.navigationTitle("Lessons")
        }
    }
}

struct SprintView: View {
    var body: some View {
        NavigationView {
            List {  Text("Coming Soon!")
            }.navigationTitle("Sprint Workouts")
        }
    }
}
