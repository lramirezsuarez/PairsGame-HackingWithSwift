//
//  Deck.swift
//  SwiftUILiveCoding
//
//  Created by Luis Ramirez on 15/04/20.
//  Copyright © 2020 Lramirez. All rights reserved.
//

import SwiftUI

final class Deck: ObservableObject {
    let allCards: [Card] = Bundle.main.decode("math.json")
    var cardParts = [CardPart]()
    
    init() {
        let selectedCard = allCards.shuffled().prefix(12)
        
        for card in selectedCard {
            cardParts.append(CardPart(id: card.id, text: card.a))
            cardParts.append(CardPart(id: card.id, text: card.b))
        }
        
        cardParts.shuffle()
    }
    
    func set(_ index: Int, to state: CardState) {
        cardParts[index].state = state
        objectWillChange.send()
    }
}
