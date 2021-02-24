//
//  RipeningView.swift
//  Avocados
//
//  Created by Itunu Raimi on 24/02/2021.
//

import SwiftUI

struct RipeningView: View {
    // MARK: - PROPERTIES
    var ripening: Ripening
    @State private var slideIn = false
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Image(ripening.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color("ColorGreenLight"))
                        .frame(width: 110, height: 110, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 120, height: 120, alignment: .center)
                )
                .zIndex(1)
                .animation(Animation.easeInOut(duration: 1))
                .offset(y: slideIn ? 55 : -55)
            
            VStack(alignment: .center, spacing: 10, content: {
                // stage
                VStack(alignment: .center, spacing: 0, content: {
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                    
                    Text("STAGE")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                        
                })
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.top, 65)
                .frame(width: 180)
                
                // title
                Text(ripening.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 4)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                // description
                Spacer()
                
                Text(ripening.description)
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenDark"))
                    .lineLimit(nil)
                
                Spacer()
                
                // ripeness
                Text(ripening.ripeness)
                    .foregroundColor(.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3 )
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                
                // instruction
                Text(ripening.instruction)
                    .font(.footnote)
                    .foregroundColor(Color("ColorGreenLight"))
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                
                Spacer()
                
            }) //: VSTACK
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom)
                    .cornerRadius(20)
            )
            
        } //: VSTACK
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            slideIn.toggle()
        })
    }
}

// MARK: - PREVIEW
struct RipeningView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningView(ripening: ripeningsData[1])
    }
}
