//
//  RecipeModel.swift
//  Avocados
//
//  Created by Itunu Raimi on 23/02/2021.
//

import Foundation

struct Recipe: Identifiable {
    var id = UUID()
    let title, headline, image: String
    let rating, serves, preparation, cooking: Int
    let instructions, ingredients: [String]
}
