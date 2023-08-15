//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Vasanthakumar Annadurai on 15/08/23.
//

import Foundation

class EmojiMemoryGame {
    
    static var emojis = ["🚗", "🛴", "✈️", "🛵", "⛵️", "🚎", "🚐", "🚛", "🛻", "🏎", "🚂", "🚊", "🚀", "🚁", "🚢", "🛶", "🛥", "🚞", "🚟", "🚃"]
    
    private var model = MemoryGame(noOfPairsOfCards: 4) { pairIndex in
        emojis[pairIndex]
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
