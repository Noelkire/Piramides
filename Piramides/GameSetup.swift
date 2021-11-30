//
//  GameSetup.swift
//  GameSetup
//
//  Created by Erik Leon on 8/8/21.
//

import Foundation

func testDeckData() {
    let testSample = Deck()
    testSample.createDeck()
    testSample.shuffleDeck()

    testSample.print(cardPos: 0)
    testSample.print(cardPos: 24)
    testSample.print(cardPos: 25)
    testSample.print(cardPos: 26)
    testSample.print(cardPos: 51)
        // Creating the deck loop
        // A deck consists of 52 cards, there are 4 suites with 13 cards. A 2 3 4 5 6 7 8 9 10 J Q K
        // Iterate through each suite then while in the suite create the 13 cards that correspond with the suite
        // After completeion of the deck, we can create a unit test that checkc sthat the deck was created correct
        // After the desk has been completed, we can start the game???
        // Game Setup: Pyramids
        // Bottom row is 7 cards and ends with 1 card at the top
        // the remaining cards is the deck that we draw from
        // Create deck > Validate > Shuffle deck > Draw cards from the top and place into the pyramid from bottom up
        // AFtwer the pyramid has been made we set down the deck and draw from the top card which will the starting play card
        //
}
