//
//  CardPart.swift
//  SwiftUILiveCoding
//
//  Created by Luis Ramirez on 15/04/20.
//  Copyright © 2020 Lramirez. All rights reserved.
//

import Foundation

enum CardState {
    case unflipped, flipped, matched
}

struct CardPart {
    let id: UUID
    let text: String
    var state = CardState.unflipped
}
