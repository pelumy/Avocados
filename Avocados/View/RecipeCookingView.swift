//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Itunu Raimi on 23/02/2021.
//

import SwiftUI

struct RecipeCookingView: View {
    var recipe: Recipe
    var body: some View {
        HStack(alignment: .center, spacing: 12, content: {
            HStack(alignment: .center, spacing: 12, content: {
              Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            })//: HSTACK
            
            HStack(alignment: .center, spacing: 12, content: {
              Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            })//: HSTACK
            
            HStack(alignment: .center, spacing: 12, content: {
              Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            })//: HSTACK
        })//: HSTACK
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[1])
    }
}
