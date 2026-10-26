//
//  Stap_4.swift
//  Pokemon
//
//  Created by Jurgen Bert on 22/09/2026.
//

import SwiftUI

struct Stap_4: View {
    var body: some View {
        let p2 = Pokemon(naam: "Bulbasaur", nummer: 1, type1: "Grass", type2: "Poison", kleur: .green, HP: 45, speed: 45)
        let p1 = Pokemon(naam: "Pikachu", nummer: 25, type1: "Electric", type2: "", kleur: .yellow, HP: 35, speed: 95)

        VStack {
            HStack {
                PokemonKaart(pokemon: p2)
                
                PokemonKaart(pokemon: p1)
            }
            if p1.isSterkerDan(p2) {
                Text("\(p1.naam) is sterker dan \(p2.naam)")
            } else {
                Text("\(p2.naam) is sterker dan \(p1.naam)")
            }
            if p1.isSnellerDan(p2) {
                Text("\(p1.naam) is sneller dan \(p2.naam)")
            } else {
                Text("\(p2.naam) is sneller dan \(p1.naam)")
            }

        }
    }
}

#Preview {
    Stap_4()
}
