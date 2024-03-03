//
//  FructusAppSwiftUIApp.swift
//  FructusAppSwiftUI
//
//  Created by Bilal on 1.03.2024.
//

import SwiftUI

@main
struct FructusAppSwiftUIApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
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
