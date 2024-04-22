//
//  FruitRowView.swift
//  FructusAppSwiftUI
//
//  Created by Bilal on 3.03.2024.
//

import SwiftUI

struct FruitRowView: View {
    
    // MARK: - PROPERTIES
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80,
                       alignment: .center)
                .shadow(color: .black,
                        radius: 3,
                        x: 2,
                        y: 2)
                .background(LinearGradient(colors: fruit.gradientColors,
                                           startPoint: .top,
                                           endPoint: .bottom))
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        } //: HSTACK
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FruitRowView(fruit: fruitsData[0])
        .padding()
}
