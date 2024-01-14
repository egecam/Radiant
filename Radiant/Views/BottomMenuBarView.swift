//
//  BottomMenuBarView.swift
//  Radiant
//
//  Created by Ege Çam on 13.01.2024.
//

import SwiftUI

struct BottomMenuBarView: View {
    var body: some View {
        View {
            ToolbarItemGroup(placement: .cancellationAction) {
                Text("Welcome back, Ege")
                    .font(.title2)
                    .bold()
                    .padding()
            }
            
            ToolbarItemGroup(placement: .bottomBar) {
                Spacer()
                VStack {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                
                Spacer()
                NavigationLink(destination: Explore()) {
                    VStack {
                        Image(systemName: "sparkle.magnifyingglass")
                        Text("Explore")
                    }
                }
                Spacer()
                NavigationLink(destination: Profile()) {
                    VStack {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
                }
                Spacer()
                
            }
        }
    }
}

#Preview {
    BottomMenuBarView()
}
