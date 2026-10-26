//
//  ResponsiveRectangleView.swift
//  Pokemon
//
//  Created by Jurgen Bert on 07/10/2026.
//

import SwiftUI

struct ResponsiveRectangleView: View {
    var body: some View {
        ResponsiveCircleView()
        GeometryReader { geometry in
            Rectangle()
                .fill(Color.green)
                .frame(width: geometry.size.width * 0.7, height: 100)
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
        }
        .background(Color.orange.opacity(0.2))
    
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Text("Left")
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                    .frame(width: geometry.size.width * 0.33)
                    .background(.yellow)
                Text("Right")
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                    .frame(width: geometry.size.width * 0.67)
                    .background(.orange)
            }
        }
        .frame(height: 50)
    }
}

#Preview {
    ResponsiveRectangleView()
}
