//
//  CardBack.swift
//  SwiftUILiveCoding
//
//  Created by Luis Ramirez on 15/04/20.
//  Copyright © 2020 Lramirez. All rights reserved.
//

import SwiftUI

struct CardBack: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 16)
            .fill(Color.blue)
            .frame(width: 140, height: 100)
            .overlay(
            RoundedRectangle(cornerRadius: 16)
                .strokeBorder(Color.white, lineWidth: 2)
        )
    }
}

struct CardBack_Previews: PreviewProvider {
    static var previews: some View {
        CardBack()
    }
}
