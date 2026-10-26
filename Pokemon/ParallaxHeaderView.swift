//
//  ParallaxHeaderView.swift
//  Pokemon
//
//  Created by Jurgen Bert on 07/10/2026.
//

import SwiftUI

struct ParallaxHeaderView: View {
    var body: some View {
        ScrollView {
            GeometryReader { geo in
                let minY = geo.frame(in: .global).minY
                Image("001")
                    .resizable()
                    .scaledToFill()
                    .frame(
                        width: geo.size.width,
                        height: minY > 0 ? 300 + minY : 300
                    )
                    .clipped()
                    .offset(y: minY > 0 ? -minY : 0)
            }
            .frame(height: 300)
            VStack(spacing: 20) {
                ForEach(0..<30) { i in
                    Text("Scroll Content \(i+1)")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.white)
                        .cornerRadius(12)
                        .shadow(radius: 3)
                }
            }
            .padding()
        }
        .background(Color(.systemGroupedBackground))
    }
}

#Preview {
    ParallaxHeaderView()
}
