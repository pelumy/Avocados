//
//  FactModel.swift
//  Avocados
//
//  Created by Itunu Raimi on 23/02/2021.
//

import Foundation

struct Fact: Identifiable {
    var id = UUID()
    let image, content: String
}
