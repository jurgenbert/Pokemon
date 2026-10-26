//
//  Stap_5.swift
//  Pokemon
//
//  Created by Jurgen Bert on 22/09/2026.
//

import SwiftUI

struct Stap_5: View {
    var body: some View {
        List(Pokemon.alle) { p in
            PokemonKaart(pokemon: p)
        }
    }
}

#Preview {
    Stap_5()
}
