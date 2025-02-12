//
//  BlueButtonView.swift
//  TrafficLight
//
//  Created by Artem H on 2/11/25.
//

import SwiftUI

struct BlueButtonView: View {
    let buttonLabel: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(buttonLabel)
                .font(.largeTitle)
                .foregroundStyle(.white)
                .fontWeight(.bold)
                .padding()
                .frame(width: 240, height: 80)
        }
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white, lineWidth: 4)
        )
        .shadow(radius: 10)
    }
}

#Preview {
    BlueButtonView(buttonLabel: "Start") { print("Start") }
}
