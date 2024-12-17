import SwiftUI
import MapKit

struct GlobalView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 0, longitude: 0),
                                                   span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50))
    let newsItems: [News] = News.sampleData // Replace with your data source
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region, annotationItems: newsItems) { item in
                MapAnnotation(coordinate: item.coordinate) {
                    CircleImageView(imageName: item.imageName)
                        .onTapGesture {
                            showActionSheet(for: item)
                        }
                }
            }
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