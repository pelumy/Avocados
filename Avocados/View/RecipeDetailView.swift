//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Itunu Raimi on 23/02/2021.
//

import SwiftUI

struct RecipeDetailView: View {
    // MARK: - PROPERTIES
    var recipe: Recipe
    @State private var pulsate = false
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                Group {
                    // TITLE
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    
                    // RATING
                    RecipeRatingView(recipe: recipe)
                    
                    // COOKING
                    RecipeCookingView(recipe: recipe)
                    
                    // INGREDIENTS
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5, content: {
                        ForEach(recipe.ingredients, id: \.self) { item in
                            VStack(alignment: .leading, spacing: 5, content: {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                                
                            }) //: VSTACK
                        } //: LOOP
                    }) //: VSTACK
                    
                    // INSTRUCTIONS
                    Text("Instructions")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ForEach(recipe.instructions, id: \.self) { item in
                        VStack(alignment: .center, spacing: 5, content: {
                            
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenAdaptive"))
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.leading)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        }) //: VSTACK
                    } //: LOOP
                    
                } //: GROUP
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
        
            } //: VSTACK
            
        } //: SCROLL
        .edgesIgnoringSafeArea(.top)
        .overlay(
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                        
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 4 )
                            .opacity(pulsate ? 1 : 0.6)
                            .scaleEffect(pulsate ? 1.2 : 0.8, anchor: .center)
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                        
                }) //: BUTTON
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                }
                Spacer()
            }
        )//: OVERLAY
        .onAppear() {
            pulsate.toggle()
        }
    }
}

// MARK: - PREVIEW
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[2])
    }
}
