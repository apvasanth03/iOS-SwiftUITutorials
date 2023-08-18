//
//  MemoryGame.swift
//  Memorize
//
//  Created by Vasanthakumar Annadurai on 15/08/23.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    
    // MARK: - Properties
    private(set) var cards: Array<Card>
    private var indexOfTheOneAndOnlyFaceUpCard: Int? {
        get {
            cards.indices.filter({ cards[$0].isFaceUp }).oneAndOnly
        }
        set {
            cards.indices.forEach{ cards[$0].isFaceUp = ($0 == newValue) }
        }
    }
    
    // MARK: - Init
    init(noOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = []
        
        // Add "noOfPairsOfCards * 2" cards to cards array
        for pairIndex in 0..<noOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: (pairIndex * 2)))
            cards.append(Card(content: content, id: (pairIndex * 2 + 1)))
        }
        
        cards.shuffle()
    }
    
    // MARK: - Methods
    mutating func choose(_ card: Card){
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id }),
           !cards[chosenIndex].isFaceUp,
           !cards[chosenIndex].isMatched {
            if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
                
                cards[chosenIndex].isFaceUp = true
            }else {
                indexOfTheOneAndOnlyFaceUpCard = chosenIndex
            }
        }
    }
    
    mutating func shuffle(){
        cards.shuffle()
    }
    
    // MARK: - Card
    struct Card: Identifiable {
        var isFaceUp = false
        var isMatched = false
        let content: CardContent
        let id: Int
    }
}

extension Array {
    
    var oneAndOnly: Element? {
        if count == 1 {
            return first
        }else {
            return nil
        }
    }
}
