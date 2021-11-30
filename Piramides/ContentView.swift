//
//  ContentView.swift
//  Piramides
//
//  Created by Erik Leon on 8/8/21.
//

import SwiftUI

struct ContentView: View {
    let gameDeck = Deck()
    
    var body: some View {
        VStack {
            Button(action: {
                gameDeck.createDeck()
            }) {
                Text("Create Deck")
            }
            Button(action: {
                gameDeck.shuffleDeck()
            }) {
                Text("Shuffle Deck")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
