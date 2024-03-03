//
//  StartButtonView.swift
//  FructusAppSwiftUI
//
//  Created by Bilal on 1.03.2024.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    // MARK: - BODY
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack {
                    
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
            
        } //: Button
        .tint(.white)

    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StartButtonView()
        .preferredColorScheme(.dark)
}
