//
//  Stap_2.swift
//  Pokemon
//
//  Created by Jurgen Bert on 22/09/2026.
//

import SwiftUI

struct TypeView: View {
    let type: String
    let color: Color
    
    var body: some View {
        VStack {
            Circle()
                .foregroundStyle(color.opacity(0.4))
                .overlay(
                    Image(type.lowercased())
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                )
                .frame(height: 100)
            
            Text(type)
                .padding(10)
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundStyle(color)
                    //.padding()
                )
        }
        
    }
}

struct PokemonKaart_extended: View {
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
                .frame(width: 100)
            HStack {
                
                TypeView(type: pokemon.type1, color: pokemon.kleur)
                
                if pokemon.type2 != "" {
                    TypeView(type: pokemon.type2, color: pokemon.kleur)
                }
            }
            
            ProgressBar(
                progress: Double(pokemon.HP) / 380.0,
                color: .green,
                text: "HP \(pokemon.HP)"
            )
            ProgressBar(
                progress: Double(pokemon.speed) / 150.0,
                color: .orange,
                text: "speed \(pokemon.speed)",
                textColor: .black
            )
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

    PokemonKaart_extended(pokemon: p2)
}
