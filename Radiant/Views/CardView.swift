//
//  CardView.swift
//  Radiant
//
//  Created by Ege Çam on 13.01.2024.
//

import SwiftUI

struct CardView: View {
    let card: Card
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(systemName: "person.2.fill")
                Text(String(card.followers))
            }
            .padding()
            Spacer()
            Text(card.title)
                .font(.system(size: 64))
                .bold()
                .lineLimit(2)
                .minimumScaleFactor(0.01)
                .padding()
                .multilineTextAlignment(.leading)
        }
        .frame(width: 250, height: 325)
        .background(card.theme.mainColor)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

struct CardView_Previews: PreviewProvider {
    static var card = Card.sampleData[0]
    static var previews: some View {
        CardView(card: card)
    }
}
