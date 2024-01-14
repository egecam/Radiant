//
//  Profile.swift
//  Radiant
//
//  Created by Ege Çam on 13.01.2024.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.circle")
                    .font(.system(size: 80))
                Text("Ege")
                    .font(.largeTitle)
            }
            
            HStack {
                Text("Favourite Shows")
                    .font(.title)
                .bold()
                .padding()
                
                Spacer()
            }
            
            ScrollableCardsView(cards: Card.sampleData)
        }
    }
}

#Preview {
    Profile()
}
