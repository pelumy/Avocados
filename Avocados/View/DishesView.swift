//
//  DishesView.swift
//  Avocados
//
//  Created by Itunu Raimi on 23/02/2021.
//

import SwiftUI

struct DishesView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        
        HStack(alignment: .center, spacing: 4) {
            // MARK: - FIRST COLUMN
            
            VStack(alignment: .leading, spacing: 4) {
                DishesItemview(image: "icon-toasts", text: "Toasts")
                Divider()
                DishesItemview(image: "icon-tacos", text: "Tacos")
                Divider()
                DishesItemview(image: "icon-salads", text: "Salads")
                Divider()
                DishesItemview(image: "icon-halfavo", text: "Spreads")
            } //: VSTACK
            
            // MARK: - SECOND COLUMN
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            } //: VSTACK
            
            // MARK: - THIRD COLUMN
            
            VStack(alignment: .trailing, spacing: 4) {
                HStack {
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                } //: HSTACK
                
                Divider()
                
                HStack {
                    Text("Sandwich")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                } //: HSTACK
                
                Divider()
                
                HStack {
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                } //: HSTACK
                
                Divider()
                
                HStack {
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                } //: HSTACK
                
            } //: VSTACK
            
        } //: HSTACK
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

// MARK: - ICON MODIFIER
struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.frame(width: 42, height: 42, alignment: .center)
    }
}

// MARK: - PREVIEW
struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
    }
}
