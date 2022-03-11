//
//  Home.swift
//  FitnessAppUI-SwiftUI-3.0
//
//  Created by Juan Sebastian Orozco Buitrago on 3/11/22.
//

import SwiftUI

struct Home: View {
    
    //MARK: - PROPERTIES
    
    // UI Properties
    @State var currentWeek: [Date] = []
    @State var currentDay: Date = Date()
    
    
    //MARK: - BODY
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Current Week")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis.circle")
                        .font(.title3)
                }

            } //: HSTACK
            .foregroundColor(.white)
            
            //MARK: - Current Week View
            HStack(spacing: 10) {
                
            }
        } //: VSTACK
        .padding()
        .onAppear(perform: extractCurrentWerek)
    }
    
    //MARK: - Extracting Current Week
    func extractCurrentWerek() {
        let calendar = Calendar.current
        let week =  calendar.dateInterval(of: .weekOfMonth, for: Date())
        
        guard let firstDay = week?.start else {
            return
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
