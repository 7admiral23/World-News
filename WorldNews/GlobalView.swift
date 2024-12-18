//
//  GlobalView.swift
//  WorldNews
//
//  Created by Ulugbek Abdimurodov on 18/12/24.
//


import SwiftUI

struct GlobalView: View {
    @StateObject private var newsFetcher = NewsFetcher()
    @State private var selectedNews: Article? = nil
    @State private var showActionSheet = false

    var body: some View {
        NavigationView {
            List(newsFetcher.news) { article in
                HStack {
                    if let imageUrl = article.urlToImage, let url = URL(string: imageUrl) {
                        AsyncImage(url: url) { image in
                            image.resizable().scaledToFill()
                        } placeholder: {
                            Color.gray
                        }
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    }
                    Text(article.title).bold()
                }
                .onTapGesture {
                    selectedNews = article
                    showActionSheet = true
                }
            }
            .onAppear {
                newsFetcher.fetchNews()
            }
            .actionSheet(isPresented: $showActionSheet) {
                ActionSheet(
                    title: Text(selectedNews?.title ?? "News Details"),
                    message: Text(selectedNews?.description ?? "No description available"),
                    buttons: [.cancel()]
                )
            }
            .navigationTitle("Global News")
        }
    }
}
