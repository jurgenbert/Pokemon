//
//  Stap_1.swift
//  MyApp
//
//  Created by Jurgen Bert on 22/09/2026.
//

import SwiftUI

struct Stap_1: View {
    var body: some View {
        Image("Pokemon")
            .resizable()
            .scaledToFit()
        VStack(spacing:10) {
            Text("Pikachu")
                .font(.largeTitle).bold(true)
                .padding()
            Text("#0025")
                .foregroundStyle(.gray)
            Text("Electric")
                .padding(10)
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundStyle(.yellow)
                        //.padding()
                )
            Text("35 HP - 90 speed")
                .padding()
        }
        .frame(maxWidth:.infinity)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .foregroundStyle(.yellow.opacity(0.2))
        )
        .padding()

    }
}

#Preview {
    Stap_1()
}
