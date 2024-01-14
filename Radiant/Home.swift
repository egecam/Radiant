//
//  ContentView.swift
//  Radiant
//
//  Created by Ege Çam on 13.01.2024.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack {
                        HStack {
                            Text("Trending Shows")
                                .font(.title)
                                .bold()
                                .padding(EdgeInsets(top: 50, leading: 20, bottom: 0, trailing: 0))
                            Spacer()
                        }
                        ScrollableCardsView(cards: Card.sampleData)
                    }
                    
                    Spacer()
                    
                    VStack {
                        HStack {
                            Text("Good For Your Depression")
                                .font(.title)
                                .bold()
                                .padding(EdgeInsets(top: 50, leading: 20, bottom: 0, trailing: 0))
                            Spacer()
                        }
                        ScrollableCardsView(cards: Card.sampleData)
                    }
                    
                    Spacer()
                    
                    VStack {
                        HStack {
                            Text("Hidden Gems")
                                .font(.title)
                                .bold()
                                .padding(EdgeInsets(top: 50, leading: 20, bottom: 0, trailing: 0))
                            Spacer()
                        }
                        ScrollableCardsView(cards: Card.sampleData)
                    }
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .confirmationAction) {
                    
                        
                        Button(action: {}, label: {
                            Image(systemName: "bell")
                        })
                    
                }
                
                ToolbarItemGroup(placement: .cancellationAction) {
                    Text("Welcome back, Ege")
                        .font(.title2)
                        .bold()
                        .padding()
                }
                
                ToolbarItemGroup(placement: .bottomBar) {
                    HStack {
                        Spacer()
                        Button(action: {}, label: {
                            VStack {
                                Image(systemName: "house.fill")
                                Text("Home")
                            }
                        })
                        Spacer()
                        Button(action: {}, label: {
                            VStack {
                                Image(systemName: "sparkle.magnifyingglass")
                                Text("Explore")
                            }
                        })
                        Spacer()
                        Button(action: {}, label: {
                            VStack {
                                Image(systemName: "person.fill")
                                Text("Profile")
                            }
                        })
                        Spacer()
                    }
                }
            }
        }
        
    }
}

#Preview {
    Home()
}
