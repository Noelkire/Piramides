import SwiftUI
enum Suites: String, CaseIterable {
    case spades = "suit.spade.fill"
    case clubs = "suit.club.fill"
    case hearts = "suit.heart.fill"
    case diamonds = "suit.diamond.fill"
}
enum Value:String, CaseIterable {
    case ace = "ace"
    case two = "two"
    case three = "three"
    case four = "four"
    case five = "five"
    case six = "six"
    case seven = "seven"
    case eight = "eight"
    case nine = "nine"
    case ten = "ten"
    case jack = "jack"
    case queen = "queen"
    case king = "king"
}
struct Card: Hashable {
    var suite: String
    var value: String
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
