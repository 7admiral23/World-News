//
//  NewsFetcher.swift
//  WorldNews
//
//  Created by Ulugbek Abdimurodov on 19/12/24.
//

import Foundation

struct Article: Codable, Identifiable {
    let id = UUID()
    let title: String
    let description: String?
    let urlToImage: String?
}

struct NewsResponse: Codable {
    let articles: [Article]
}

class NewsFetcher: ObservableObject {
    @Published var news: [Article] = []

    func fetchNews() {
        let apiKey = "3657d88def99421db1cc2b467f6bb916"
        let urlString = "https://newsapi.org/v2/top-headlines?sources=bbc-news,al-jazeera-english,euronews&apiKey=\(apiKey)"
        
        guard let url = URL(string: urlString) else { return }

        URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data {
                if let response = try? JSONDecoder().decode(NewsResponse.self, from: data) {
                    DispatchQueue.main.async {
                        self.news = response.articles
                    }
                }
            } else if let error = error {
                print("Error fetching news: \(error.localizedDescription)")
            }
        }.resume()
    }
}
