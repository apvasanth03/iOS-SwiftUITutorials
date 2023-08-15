//
//  MemoryGame.swift
//  Memorize
//
//  Created by Vasanthakumar Annadurai on 15/08/23.
//

import Foundation

struct MemoryGame<CardContent> {
    
    var cards: Array<Card>
    
    init(noOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array()
        
        // Add "noOfPairsOfCards * 2" cards to cards array
        for pairIndex in 0..<noOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    func choose(_ card: Card){
        
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
