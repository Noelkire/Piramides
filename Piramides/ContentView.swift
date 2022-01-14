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
        NavigationView {
            ZStack {
                Color("background")
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Text("Pyramids")
                        .font(.title)
                        .fontWeight(.black)
                    Text("A solitaire game")
                        .font(.subheadline)
                    Spacer()
                    if #available(iOS 15.0, *) {
                        Button(action: {
                            
                        }) {
                            NavigationLink("Start Game", destination: GameView())
                        }
                        .buttonStyle(.bordered)
                    } else {
                        // Fallback on earlier versions
                    }
                    if #available(iOS 15.0, *) {
                        Button(action: {
                            gameDeck.createDeck()
                        }) {
                            Text("Scores")
                        }
                        .buttonStyle(.bordered)
                    } else {
                        // Fallback on earlier versions
                    }
                    if #available(iOS 15.0, *) {
                        Button(action: {
                            gameDeck.createDeck()
                        }) {
                            Text("Settings")
                        }
                        .buttonStyle(.bordered)
                    } else {
                        // Fallback on earlier versions
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
