//
//  Card.swift
//  Radiant
//
//  Created by Ege Çam on 13.01.2024.
//

import Foundation

struct Card: Identifiable {
    let id = UUID()
    var title: String
    var followers: Int
    var rating: Double
    var theme: Theme
    
}

extension Card {
    static let sampleData: [Card] =
    [
        Card(title: "Farklı Düşün", followers: 8000, rating: 4.3, theme: .candy),
        Card(title: "Popüler Olmayan Psikoloji", followers: 2500, rating: 4.0, theme: .vangoghgreen),
        Card(title: "Bu Mu Yani?", followers: 15000, rating: 3.7, theme: .flatteredflamingo),
        Card(title: "Meksika Açmazı", followers: 7500, rating: 4.8, theme: .lima),
        Card(title: "stoikyaşam", followers: 1200, rating: 4.9, theme: .lanterngold)
    ]
}
