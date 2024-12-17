//
//  News.swift
//  WorldNews
//
//  Created by Ulugbek Abdimurodov on 18/12/24.
//


import Foundation
import CoreLocation

struct News: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let imageName: String
    let coordinate: CLLocationCoordinate2D
    let isLocal: Bool
    
    static let sampleData: [News] = [
        News(title: "Global News 1", description: "This is global news", imageName: "exampleImage", coordinate: CLLocationCoordinate2D(latitude: 41.9028, longitude: 12.4964), isLocal: false),
        News(title: "Local News 1", description: "This is local news", imageName: "exampleImage", coordinate: CLLocationCoordinate2D(latitude: 40.7306, longitude: -73.9352), isLocal: true)
    ]
}