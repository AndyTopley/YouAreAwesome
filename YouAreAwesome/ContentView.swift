//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Andy Topley on 27/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            Spacer()
            
            Button("Show Message") {
                
                let message1 = "You are Awesome!"
                let message2 = "You are Great!"
                
                message = (message == message1 ? message2 : message1)
                
                imageName = "image\(imageNumber)"
                
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
