//
//  ContentView.swift
//  Avocados
//
//  Created by Itunu Raimi on 22/02/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    let headers: [Header] = headersData
    let facts: [Fact] = factsData
    var recipes: [Recipe] = recipesData
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(alignment: .center, spacing: 20) {
                
                // MARK: - HEADER
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack(alignment: .top, spacing: 0, content: {
                        ForEach(headers) { header in
                            HeaderView(header: header)
                        } //: LOOP
                    }) //: HSTACK
                }) //: SCROLL
                
                // MARK: - DISHES
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView()
                    .frame(maxWidth: 640)
                    
                // MARK: - FACTS
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { fact in
                            FactsView(fact: fact)
                        } //: HSTACK
                    } //: SCROLL
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                })
                
                // MARK: - RECIPE CARDS
                Text("Avocado Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20, content: {
                    ForEach(recipes) { recipe in
                        RecipeCardView(recipe: recipe)
                    } //: LOOP
                }) //: VSTACK
                .frame(maxWidth: 640)
                .padding(.horizontal )
                
                // MARK: - FOOTER
                
                VStack(alignment: .center, spacing: 20, content: {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    Text("Everything you wanted to know about avocados but we are too afraid to ask")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(minHeight: 60)
                    
                }) //: VSTACK
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            } //: VSTACK
        }) //: SCROLL
        .edgesIgnoringSafeArea(.all)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
                .padding(8)
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
