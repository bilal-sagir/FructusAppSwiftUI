//
//  OnboardingView.swift
//  FructusAppSwiftUI
//
//  Created by Bilal on 1.03.2024.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }
        } //: TAB
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
