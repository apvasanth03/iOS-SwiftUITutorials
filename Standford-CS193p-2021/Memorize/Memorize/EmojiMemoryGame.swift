//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Vasanthakumar Annadurai on 15/08/23.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    
    // MARK: - Properties
    static var emojis = ["🚗", "🛴", "✈️", "🛵", "⛵️", "🚎", "🚐", "🚛", "🛻", "🏎", "🚂", "🚊", "🚀", "🚁", "🚢", "🛶", "🛥", "🚞", "🚟", "🚃"]
    
    @Published private var model = MemoryGame(noOfPairsOfCards: 4) { pairIndex in
        emojis[pairIndex]
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Methods
    func chooseCard(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
