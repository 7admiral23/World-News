//
//  CircleImageView.swift
//  WorldNews
//
//  Created by Ulugbek Abdimurodov on 18/12/24.
//


import SwiftUI

struct CircleImageView: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 50, height: 50)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 3)
    }
}