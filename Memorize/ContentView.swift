//
//  ContentView.swift
//  Memorize
//
//  Created by Eduardo Thomas on 02/14/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "🎃", "🕷️", "😈", "👾"]
    //let emojis: [String] = ["👻", "🎃", "🕷️", "😈"]
    //let emojis: Array<String> = ["👻", "🎃", "🕷️", "😈"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index], isFaceUp: true)
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp == true {
                base.fill(.white)
                base.strokeBorder(lineWidth: 3)
                Text(content)
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
