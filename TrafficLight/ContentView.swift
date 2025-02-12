//
//  ContentView.swift
//  TrafficLight
//
//  Created by Artem H on 2/7/25.
//

import SwiftUI

private enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var buttonLabel = "START"
    @State private var opacityRed = 0.3
    @State private var opacityYellow = 0.3
    @State private var opacityGreen = 0.3
    @State private var currentLight = CurrentLight.red
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    
        
    var body: some View {
        VStack {
            VStack(spacing: 24) {
                LightCircleView(color: .red, opacity: opacityRed)
                LightCircleView(color: .yellow, opacity: opacityYellow)
                LightCircleView(color: .green, opacity: opacityGreen)
            }
  
            Spacer()
            
            BlueButtonView(buttonLabel: buttonLabel) {
                buttonAction()
            }

        }
        .padding(.top, 100)
        .padding(.bottom, 80)
        .padding(.horizontal, 0)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .ignoresSafeArea()
    }
    
    private func buttonAction() {
        if buttonLabel == "START" {
            buttonLabel = "NEXT"
        }
        
        switch currentLight {
        case .red:
            opacityGreen = lightIsOff
            opacityRed = lightIsOn
            currentLight = .yellow
        case .yellow:
            opacityRed = lightIsOff
            opacityYellow = lightIsOn
            currentLight = .green
        case .green:
            opacityYellow = lightIsOff
            opacityGreen = lightIsOn
            currentLight = .red
        }
    }
}

#Preview {
    ContentView()
}
