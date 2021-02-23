//
//  HeaderModel.swift
//  Avocados
//
//  Created by Itunu Raimi on 23/02/2021.
//

import Foundation

struct Header: Identifiable {
    var id = UUID()
    let image, headline, subheadline: String
}
