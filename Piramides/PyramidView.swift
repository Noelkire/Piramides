//
//  PyramidView.swift
//  Piramides
//
//  Created by Erik Leon on 11/29/21.
//

import SwiftUI

struct PyramidView: View {
    var deckOfCards = Deck()
    
    var body: some View {
        LazyVStack{
            HStack {
                ZStack{
                    CardView(value: deckOfCards.cardDeck[27].value, suite: deckOfCards.cardDeck[27].suite,color: deckOfCards.cardDeck[27].color,flipped:deckOfCards.cardDeck[27].isFlipped)
                }
                
            }
            HStack {
                ForEach(deckOfCards.cardDeck[25...26], id: \.self) { card in
                    ZStack {
                        CardView(value: card.value, suite: card.suite,color: card.color,flipped:card.isFlipped)
                    }
                }
            }
            HStack {
                ForEach(deckOfCards.cardDeck[22...24], id: \.self) { card in
                    ZStack {
                        CardView(value: card.value, suite: card.suite,color: card.color,flipped:card.isFlipped)
                    }
                }
            }
            HStack {
                ForEach(deckOfCards.cardDeck[18...21], id: \.self) { card in
                    ZStack {
                        CardView(value: card.value, suite: card.suite,color: card.color,flipped:card.isFlipped)
                    }
                }
            }
            HStack {
                ForEach(deckOfCards.cardDeck[13...17], id: \.self) { card in
                    ZStack {
                        CardView(value: card.value, suite: card.suite,color: card.color,flipped:card.isFlipped)
                    }
                }
            }
            HStack {
                ForEach(deckOfCards.cardDeck[7...12], id: \.self) { card in
                    ZStack {
                        CardView(value: card.value, suite: card.suite,color: card.color,flipped:card.isFlipped)
                    }
                }
            }
            HStack {
                ForEach(deckOfCards.cardDeck[0...6], id: \.self) { card in
                    ZStack {
                        CardView(value: card.value, suite: card.suite,color: card.color,flipped:card.isFlipped)
                    }
                }
            }
        }
    }
}

struct PyramidView_Previews: PreviewProvider {
    static var previews: some View {
        PyramidView()
    }
}
