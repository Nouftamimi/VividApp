//
//  OnboardingApp.swift
//  Vivid
//
//  Created by Jumanah  on 03/08/1444 AH.
//  Copyright © 1444 AH Vivid App. All rights reserved.
//

import SwiftUI

@main
struct OnboardingApp: App {
    @AppStorage ("isOnboarding") var isOnboarding = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
