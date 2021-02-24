//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Itunu Raimi on 22/02/2021.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - PROPERTIES
    var ripeningStages: [Ripening] = ripeningsData
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    }
                } //: HStack
                .padding(.vertical)
                .padding(.horizontal, 25)
                
                Spacer()
                
            } //: VStack
            
        } //: SCROLL
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - PREVIEW

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
            .preferredColorScheme(.dark)
    }
}
