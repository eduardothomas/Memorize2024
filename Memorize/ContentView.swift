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
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp == true {
                base.fill(.white)
                base.strokeBorder(lineWidth: 3)
                Text("👻")
                    .font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            print("asdadss")
            //isFaceUp = !isFaceUp
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
