//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Andy Topley on 07/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You Are Awesome!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
               
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}