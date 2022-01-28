//
//  ContentView.swift
//  Magic Spinnerr
//
//  Created by Ali Butt on 28/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var score = 1000
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1

    
    var body: some View {
        
        VStack(spacing: 20.0) {
            Spacer()
            Text("Magic Spinner")
                .font(.largeTitle)
            
            Spacer()
            
            Text("Score: \(score)")
            
            Spacer()
            
            HStack {
                Spacer()
                Image("fruit\(slot1)")
                    .resizable().aspectRatio(contentMode: .fit)
                Image("fruit\(slot2)")
                    .resizable().aspectRatio(contentMode: .fit)
                Image("fruit\(slot3)")
                    .resizable().aspectRatio(contentMode: .fit)
                Spacer()
            }
            
            Spacer()
            
            Button("Spin") {
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                
                if slot1 == slot2 && slot2 == slot3
                {
                    score += 25
                }
                else
                {
                    score -= 10
                }
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .padding(.horizontal, 50.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.purple/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            Spacer()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
