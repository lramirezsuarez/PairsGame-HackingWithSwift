//
//  CardView.swift
//  SwiftUILiveCoding
//
//  Created by Luis Ramirez on 15/04/20.
//  Copyright © 2020 Lramirez. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var cardPart: CardPart
    
    var body: some View {
        ZStack {
            CardBack()
                .rotation3DEffect(.degrees(cardPart.state == .unflipped ? 0 : 180), axis: (x: 0, y: 1, z: 0))
                .opacity(cardPart.state == .unflipped ? 1 : 0)
            CardFront(cardPart: cardPart)
                .rotation3DEffect(.degrees(cardPart.state != .unflipped ? 0 : -180), axis: (x: 0, y: 1, z: 0))
                .opacity(cardPart.state != .unflipped ? 1 : -1)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(cardPart: CardPart(id: UUID(), text: "Text", state: .flipped))
    }
}
