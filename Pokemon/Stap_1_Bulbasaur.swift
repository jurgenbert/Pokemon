//
//  Stap_1.swift
//  MyApp
//
//  Created by Jurgen Bert on 22/09/2026.
//

import SwiftUI

struct Stap_1_Bulbasaur: View {
    var body: some View {
        Image("Pokemon")
            .resizable()
            .scaledToFit()
        VStack(spacing:10) {
            Text("Bulbasaur")
                .font(.largeTitle).bold(true)
                .padding()
            Text("#0001")
                .foregroundStyle(.gray)
            Text("Grass")
                .padding(10)
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundStyle(.yellow)
                )
            Text("45 HP - 45 speed")
                .padding()
        }
        .frame(maxWidth:.infinity)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .foregroundStyle(.green.opacity(0.2))
        )
        .padding()

    }
}

#Preview {
    Stap_1_Bulbasaur()
}
