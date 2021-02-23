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
                
                // MARK: - FOOTER
                
                VStack(alignment: .center, spacing: 20, content: {
                    Text("All About Avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
                    
                    Text("Everything you wanted to know about avocados but we are too afraid to ask")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                    
                    
                }) //: VSTACK
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            } //: VSTACK
        }) //: SCROLL
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
