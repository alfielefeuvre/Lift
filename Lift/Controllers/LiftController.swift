//
//  LiftController.swift
//  Lift
//
//  Created by Alfie Le Feuvre on 13/03/2025.
//

import CoreMotion
import CoreLocation
import Foundation
import HealthKit

class LiftController: NSObject, ObservableObject {
    // MARK: - Setup
    @Published var setUpComplete = false
    
    func setup() {
        
        setUpComplete = true
    }
    
    
    // MARK: - Controls
    @Published var showingSummaryView = false
    @Published var showingWOSession = false
    @Published var woIsActive = false

    func startLifting() {
        
    }
    
    func toggleLifting() {
        if woIsActive == true {
            
        } else {
        
        }
    }
    
    func stopLifting() {
        showingSummaryView = true
        showingWOSession = false

    }
    
    
    
}
