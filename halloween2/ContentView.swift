//
//  ContentView.swift
//  halloween2
//
//  Created by Brad Caldwell on 10/22/23.
//

import SwiftUI

import UIKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(content: "👻", isFaceUp: false)
            CardView(content: "👻", isFaceUp: true)
            CardView(content: "👻", isFaceUp: true)
            CardView(content: "👻", isFaceUp: true)
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12.0)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                base.fill()
            }
        }
    }
}

#Preview {
    ContentView()
}
