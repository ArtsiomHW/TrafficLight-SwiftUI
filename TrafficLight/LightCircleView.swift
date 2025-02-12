//
//  LightCircleView.swift
//  TrafficLight
//
//  Created by Artem H on 2/7/25.
//

import SwiftUI

struct LightCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundStyle(color.opacity(opacity))
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#Preview {
    LightCircleView(color: .red, opacity: 0.7 )
}
