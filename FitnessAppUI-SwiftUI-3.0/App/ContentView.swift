//
//  ContentView.swift
//  FitnessAppUI-SwiftUI-3.0
//
//  Created by Juan Sebastian Orozco Buitrago on 3/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Home()
        } //: SCROLLVIEW
        .frame(maxWidth: .infinity)
        .background {
            ZStack {
                VStack {
                    Circle()
                        .fill(Color("Green"))
                        .scaleEffect(0.6)
                        .offset(x: 20)
                        .blur(radius: 120) // Create the distorsion
                    
                    Circle()
                        .fill(Color("Red"))
                        .scaleEffect(0.6, anchor: .leading)
                        .offset(y: -20)
                        .blur(radius: 120) // Create the distorsion
                } //: VSTACK
                
                Rectangle()
                    .fill(.ultraThinMaterial)
            } //: ZSTACK
            .ignoresSafeArea()
        } //: BACKGROUND
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
