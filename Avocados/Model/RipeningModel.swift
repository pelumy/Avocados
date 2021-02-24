//
//  RipeningModel.swift
//  Avocados
//
//  Created by Itunu Raimi on 24/02/2021.
//

import Foundation

struct Ripening: Identifiable {
    var id = UUID()
    let image, stage, title, description, ripeness, instruction: String
}
