//
//  ContentView.swift
//  WorldNews
//
//  Created by Ulugbek Abdimurodov on 18/12/24.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            GlobalView()
                .tabItem {
                    Label("Global", systemImage: "globe")
                }
            LocalView()
                .tabItem {
                    Label("Local", systemImage: "location.fill")
                }
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "star.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
