//
//  CardDetailView.swift
//  Radiant
//
//  Created by Ege Çam on 13.01.2024.
//

import SwiftUI

struct CardDetailView: View {
    let card: Card
    
    var body: some View {
        ScrollView {
            ZStack {
                Color(card.theme.mainColor)
                
                VStack {
                    VStack {
                        HStack {
                            Image(systemName: "star.fill")
                            Text(String(card.rating))
                                .bold()
                                .font(.title2)
                            Spacer()
                            VStack {
                                HStack {
                                    Image(systemName: "person.2.fill")
                                    Text(String(card.followers))
                                        .bold()
                                        .font(.title2)
                                }
                            }
                            
                        }
                        .padding()
                        
                    }
                    Spacer()
                    Text(card.title)
                        .font(.system(size: 160))
                        .bold()
                        .lineLimit(2)
                        .minimumScaleFactor(0.01)
                        .padding()
                    
                }
                
            }
        }
    }
}

struct CardDetailView_Preview: PreviewProvider {
    static var previews: some View {
        CardDetailView(card: Card.sampleData[0])
    }
}
