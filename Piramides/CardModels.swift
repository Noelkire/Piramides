import SwiftUI

enum Suites: String, CaseIterable {
    case spades = "suit.spade.fill"
    case clubs = "suit.club.fill"
    case hearts = "suit.heart.fill"
    case diamonds = "suit.diamond.fill"
}
enum Value:Int, CaseIterable {
    case ace = 1
    case two = 2
    case three = 3
    case four = 4
    case five = 5
    case six = 6
    case seven = 7
    case eight = 8
    case nine = 9
    case ten = 10
    case jack = 11
    case queen = 12
    case king = 13
}
struct Card: Hashable {
    var suite: String
    var value: Int
    var isFlipped: Bool = false
    var color:Color {
        if(suite == "suit.spade.fill" || suite == "suit.club.fill") {
            return Color("black")
        } else {
            return Color("red")
        }
    }
}
class Deck {
    var cardDeck:[Card]
    var cardsInDeck: Int
    
    init() {
        self.cardDeck = []
        self.cardsInDeck = 52
        createDeck()
        shuffleDeck()
    }
    func shuffleDeck() {
        self.cardDeck.shuffle()
    }
    func createDeck() {
        for suite in Suites.allCases {
            for value in Value.allCases {
                let tempCard = Card(suite: suite.rawValue, value: value.rawValue)
                cardDeck.append(tempCard)
            }
        }
    }
    func simpleHaptic(status:Bool) {
        let generator = UINotificationFeedbackGenerator()
        if(status) {
            generator.notificationOccurred(.success)
        } else {
            generator.notificationOccurred(.error)
        }
    }

    func canCardBeFlipped(position:Int) -> Bool {
        let status = self.cardDeck[position-2].isFlipped && self.cardDeck[position-1].isFlipped
        return status
    }
    func print(cardPos: Int) {
        Swift.print("Card \(cardPos) \(self.cardDeck[cardPos].suite) \(self.cardDeck[cardPos].color) \(self.cardDeck[cardPos].value)")
    }
}
