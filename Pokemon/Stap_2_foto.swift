//
//  Stap_2.swift
//  Pokemon
//
//  Created by Jurgen Bert on 22/09/2026.
//

import SwiftUI

struct PokemonKaart_foto: View {
    let pokemon: Pokemon

    var body: some View {
        VStack {
            Text(pokemon.naam)
                .font(.largeTitle).bold(true)
                .padding(.top)
            Text("#" + String(format: "%04d", pokemon.nummer))
                .foregroundStyle(.gray)
            Image(pokemon.afbeelding)
                .resizable()
                .scaledToFit()
                .frame(width:100)
            Text(pokemon.type1)
                .padding(10)
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundStyle(.yellow)
                )
            Text("\(pokemon.HP) HP - \(pokemon.speed) speed")
                .padding()
        }
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .foregroundStyle(pokemon.kleur.opacity(0.2))
        )
        .padding()
    }
}

#Preview {
    let p = Pokemon(
        naam: "Pikachu",
        nummer: 25,
        type1: "Electric",
        type2: "",
        kleur: .yellow,
        HP: 35,
        speed: 95
    )
    let p2 = Pokemon(
        naam: "Bulbasaur",
        nummer: 1,
        type1: "Grass",
        type2: "Poison",
        kleur: .green,
        HP: 45,
        speed: 45
    )

    PokemonKaart_foto(pokemon: p2)
}
