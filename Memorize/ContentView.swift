//
//  ContentView.swift
//  Memorize
//
//  Created by Eduardo Thomas on 02/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        if isFaceUp == true {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 3)
                Text("👻")
                    .font(.largeTitle)
            }
        } else {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
