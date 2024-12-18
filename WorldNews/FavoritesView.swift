//
//  FavoritesView.swift
//  WorldNews
//
//  Created by Ulugbek Abdimurodov on 18/12/24.
//


import SwiftUI

struct FavoritesView: View {
    @State private var favoriteRegions: [String] = ["Italy", "EU", "Middle East"] // Example favorites
    
    var body: some View {
        NavigationView {
            List(favoriteRegions, id: \.self) { region in
                Text(region)
            }
            .navigationTitle("Favorites")
        }
    }
}