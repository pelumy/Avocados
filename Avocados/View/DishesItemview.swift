//
//  DishesItemview.swift
//  Avocados
//
//  Created by Itunu Raimi on 23/02/2021.
//

import SwiftUI

struct DishesItemview: View {
    var image: String
    var text: String
    
    var body: some View {
        HStack {
           Image(image)
            .resizable()
            .modifier(IconModifier())
            Spacer()
            
            Text(text)
        } //: HSTACK
    }
}

struct DishesItemview_Previews: PreviewProvider {
    static var previews: some View {
        DishesItemview(image: "icon-toasts", text: "Toasts")
    }
}
