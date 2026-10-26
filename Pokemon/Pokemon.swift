//
//  Pokemon.swift
//  Pokemon
//
//  Created by Jurgen Bert on 22/09/2026.
//

import Foundation
import SwiftUI

struct Pokemon: Identifiable {
    var id: String { naam }
    var naam: String
    var nummer: Int
    var type1: String
    var type2: String
    var kleur: Color
    var HP: Int
    var speed: Int
}

extension Pokemon {
    var afbeelding: String { String(format: "%03d", nummer) }

    func isSterkerDan(_ andere: Pokemon) -> Bool {
        self.HP > andere.HP
    }
    
    func isSnellerDan(_ andere: Pokemon) -> Bool {
        self.speed > andere.speed
    }
}

extension Pokemon {
    static let alle: [Pokemon] = [
        Pokemon(naam: "Bulbasaur", nummer: 1, type1: "Grass", type2: "Poison", kleur: .green, HP: 45, speed: 45),
        Pokemon(naam: "Ivysaur", nummer: 2, type1: "Grass", type2: "Poison", kleur: .green, HP: 60, speed: 60),
        Pokemon(naam: "Venusaur", nummer: 3, type1: "Grass", type2: "Poison", kleur: .green, HP: 80, speed: 80),
        Pokemon(naam: "Charmander", nummer: 4, type1: "Fire", type2: "", kleur: .red, HP: 39, speed: 65),
        Pokemon(naam: "Charmeleon", nummer: 5, type1: "Fire", type2: "", kleur: .red, HP: 58, speed: 80),
        Pokemon(naam: "Charizard", nummer: 6, type1: "Fire", type2: "Flying", kleur: .red, HP: 78, speed: 100),
        Pokemon(naam: "Squirtle", nummer: 7, type1: "Water", type2: "", kleur: .blue, HP: 44, speed: 43),
        Pokemon(naam: "Wartortle", nummer: 8, type1: "Water", type2: "", kleur: .blue, HP: 59, speed: 58),
        Pokemon(naam: "Blastoise", nummer: 9, type1: "Water", type2: "", kleur: .blue, HP: 79, speed: 78),
        Pokemon(naam: "Caterpie", nummer: 10, type1: "Bug", type2: "", kleur: .mint, HP: 45, speed: 45),
        Pokemon(naam: "Metapod", nummer: 11, type1: "Bug", type2: "", kleur: .mint, HP: 50, speed: 30),
        Pokemon(naam: "Butterfree", nummer: 12, type1: "Bug", type2: "Flying", kleur: .mint, HP: 60, speed: 70),
        Pokemon(naam: "Weedle", nummer: 13, type1: "Bug", type2: "Poison", kleur: .mint, HP: 40, speed: 50),
        Pokemon(naam: "Kakuna", nummer: 14, type1: "Bug", type2: "Poison", kleur: .mint, HP: 45, speed: 35),
        Pokemon(naam: "Beedrill", nummer: 15, type1: "Bug", type2: "Poison", kleur: .mint, HP: 65, speed: 75),
        Pokemon(naam: "Pidgey", nummer: 16, type1: "Normal", type2: "Flying", kleur: .gray, HP: 40, speed: 56),
        Pokemon(naam: "Pidgeotto", nummer: 17, type1: "Normal", type2: "Flying", kleur: .gray, HP: 63, speed: 71),
        Pokemon(naam: "Pidgeot", nummer: 18, type1: "Normal", type2: "Flying", kleur: .gray, HP: 83, speed: 101),
        Pokemon(naam: "Rattata", nummer: 19, type1: "Normal", type2: "", kleur: .gray, HP: 30, speed: 72),
        Pokemon(naam: "Raticate", nummer: 20, type1: "Normal", type2: "", kleur: .gray, HP: 55, speed: 97),
        Pokemon(naam: "Spearow", nummer: 21, type1: "Normal", type2: "Flying", kleur: .gray, HP: 40, speed: 70),
        Pokemon(naam: "Fearow", nummer: 22, type1: "Normal", type2: "Flying", kleur: .gray, HP: 65, speed: 100),
        Pokemon(naam: "Ekans", nummer: 23, type1: "Poison", type2: "", kleur: .purple, HP: 35, speed: 55),
        Pokemon(naam: "Arbok", nummer: 24, type1: "Poison", type2: "", kleur: .purple, HP: 60, speed: 80),
        Pokemon(naam: "Pikachu", nummer: 25, type1: "Electric", type2: "", kleur: .yellow, HP: 35, speed: 90),
        Pokemon(naam: "Raichu", nummer: 26, type1: "Electric", type2: "", kleur: .yellow, HP: 60, speed: 110),
        Pokemon(naam: "Sandshrew", nummer: 27, type1: "Ground", type2: "", kleur: .brown, HP: 50, speed: 40),
        Pokemon(naam: "Sandslash", nummer: 28, type1: "Ground", type2: "", kleur: .brown, HP: 75, speed: 65),
        Pokemon(naam: "Nidoran", nummer: 29, type1: "Poison", type2: "", kleur: .purple, HP: 55, speed: 41),
        Pokemon(naam: "Nidorina", nummer: 30, type1: "Poison", type2: "", kleur: .purple, HP: 70, speed: 56),
        Pokemon(naam: "Nidoqueen", nummer: 31, type1: "Poison", type2: "Ground", kleur: .purple, HP: 90, speed: 76),
        Pokemon(naam: "Nidoran", nummer: 32, type1: "Poison", type2: "", kleur: .purple, HP: 46, speed: 50),
        Pokemon(naam: "Nidorino", nummer: 33, type1: "Poison", type2: "", kleur: .purple, HP: 61, speed: 65),
        Pokemon(naam: "Nidoking", nummer: 34, type1: "Poison", type2: "Ground", kleur: .purple, HP: 81, speed: 85),
        Pokemon(naam: "Clefairy", nummer: 35, type1: "Fairy", type2: "", kleur: .pink, HP: 70, speed: 35),
        Pokemon(naam: "Clefable", nummer: 36, type1: "Fairy", type2: "", kleur: .pink, HP: 95, speed: 60)
    ]
}
