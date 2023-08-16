//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Vasanthakumar Annadurai on 15/08/23.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    
    // MARK: - Properties
    typealias Card = MemoryGame<String>.Card
    
    private static var emojis = ["🚗", "🛴", "✈️", "🛵", "⛵️", "🚎", "🚐", "🚛", "🛻", "🏎", "🚂", "🚊", "🚀", "🚁", "🚢", "🛶", "🛥", "🚞", "🚟", "🚃"]
    
    @Published private var model = MemoryGame(noOfPairsOfCards: 8) { pairIndex in
        emojis[pairIndex]
    }
    
    var cards: Array<Card> {
        model.cards
    }
    
    // MARK: - Methods
    func chooseCard(_ card: Card) {
        model.choose(card)
    }
}
