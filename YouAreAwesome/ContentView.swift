//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Andy Topley on 07/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageString = ""
    @State private var messageNumber = 0
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Image(systemName: imageString)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            Button("Press Me!") {
                let message1 = "You are awesome!"
                let message2 = "You are great!"
                let imageString1 = "sun.max.fill"
                let imageString2 = "hand.thumbsup"
                if messageNumber == 0 {
                    message = message1
                    imageString = imageString1
                    messageNumber = 1
                } else {
                    message = message2
                    imageString = imageString2
                    messageNumber = 0
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            
        }
        .padding()
        
        
    }
}

#Preview {
    ContentView()
}
