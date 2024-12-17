import SwiftUI
import MapKit

struct LocalView: View {
    @StateObject private var locationManager = LocationManager()
    @State private var region = MKCoordinateRegion()
    
    let localNewsItems: [News] = News.sampleData.filter { $0.isLocal } // Localized news
    
    var body: some View {
        ZStack {
            if let location = locationManager.lastLocation {
                Map(coordinateRegion: .constant(MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))),
                    annotationItems: localNewsItems) { item in
                        MapAnnotation(coordinate: item.coordinate) {
                            CircleImageView(imageName: item.imageName)
                                .onTapGesture {
                                    showActionSheet(for: item)
                                }
                        }
                    }
            } else {
                ProgressView("Fetching location...")
            }
        }
        .onAppear {
            locationManager.requestLocation()
        }
    }
    
    private func showActionSheet(for news: News) {
        let alert = UIAlertController(title: news.title, message: news.description, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Close", style: .cancel))
        
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            windowScene.windows.first?.rootViewController?.present(alert, animated: true)
        }
    }
}