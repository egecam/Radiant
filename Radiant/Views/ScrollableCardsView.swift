//
//  ScrollableCardsView.swift
//  Radiant
//
//  Created by Ege Çam on 13.01.2024.
//

import SwiftUI

struct ScrollableCardsView: View {
    let cards: [Card]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(cards) { card in
                    NavigationLink(destination: CardDetailView(card: card)) {
                        CardView(card: card)
                    }
                }
            }
            .padding()
        }
    }
}

struct ScrollableCardsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollableCardsView(cards: Card.sampleData)
    }
}
