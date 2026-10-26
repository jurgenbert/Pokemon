//
//  ProgressBar.swift
//  Pokemon
//
//  Created by Jurgen Bert on 22/09/2026.
//


import SwiftUI

struct ProgressBar: View {
    @State var progress: Double = 0.5
    @State var color: Color = .green
    @State var text: String = ""
    @State var textColor: Color = .white
    
    var body: some View {
        ZStack {
            
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(height: 20)
                        .opacity(0.4)
                        .foregroundColor(color.opacity(0.4))
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: progress * geometry.size.width, height: 20)
                        .foregroundColor(color)
                        .animation(.easeInOut, value: progress)
                }
            }
            Text(text)
                .foregroundStyle(textColor)
                .bold(true)
        }
    }
}

#Preview {
    ProgressBar(
        progress: 0.99,
        color: .red,
        text: "speed",
        textColor: .black
    )
    .padding()
}
