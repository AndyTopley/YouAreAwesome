//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Andy Topley on 07/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = "I'm a Programmer!"
    
    var body: some View {
        
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Button("Click Me!") {
                message = "You're Awesome!"
            }
               
        }
        .padding()
        
        
    }
}

#Preview {
    ContentView()
}
