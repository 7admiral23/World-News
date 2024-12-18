# World News iOS Application 🌍

An iOS application that displays the latest news around the world with a clean and interactive design. The app provides global, local, and favorites news tabs, enabling users to stay informed easily.

## Features ✨
	•	Global News: Displays the latest news happening worldwide, represented as circular images on an interactive map.
	•	Local News: Shows the latest news based on the user’s current location (country).
	•	Favorites: Allows users to select a country/region and view news specific to it.
	•	Action Sheet for News:
	•	Tapping on a news item opens an Action Sheet displaying:
	•	Title
	•	Main Image
	•	Description

## Screenshots 📱

Here are previews of the app’s interface(in progress):

![World news](https://github.com/user-attachments/assets/f9bd641b-e593-4066-b408-11740cdcf75d)

		

## App Architecture 🏗️

The project is built using SwiftUI and follows a clean MVVM design pattern:
	1.	GlobalView: Displays global news using a map with circular news previews.
	2.	LocalView: Determines the user’s location and displays country-specific news.
	3.	FavoritesView: Allows users to pick a country/region and view news about it.

## Code Components:
	•	NewsFetcher.swift: Manages data retrieval.
	•	GlobalView.swift, LocalView.swift, and FavoritesView.swift: Manage UI for each tab.
	•	Models/Article.swift: Represents the news model.

## Requirements 📋
	•	Xcode 14+
	•	iOS 17.0+
	•	SwiftUI
	•	CoreLocation (for local news functionality)

## Setup Instructions ⚙️
	1.	Clone the Repository
git clone https://github.com/7admiral23/World-News.git

cd world-news-ios


	2.	Open the Project
	•	Open the .xcodeproj file in Xcode.
	3.	Configure Permissions in Info.plist
Add the following keys to your Info.plist file:

<key>NSLocationWhenInUseUsageDescription</key>
<string>We need your location to show local news.</string>
<key>NSAppTransportSecurity</key>
<dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
</dict>


	4.	Run the Project
	•	Select an iOS simulator or device in Xcode.
	•	Click the Run button (or press Cmd + R).

## Future Improvements 🚀
	•	Integrate news API services (e.g., NewsAPI, RSS Feeds) to fetch live news dynamically.
	•	Add a search functionality for users to find news by keyword.
	•	Implement dark mode support.

## Contributing 🤝

Contributions are welcome! If you’d like to:
	1.	Fork this repository.
	2.	Create a new branch: feature/your-feature-name.
	3.	Submit a pull request for review.

## License 📄

This project is licensed under the Ulugbek Abdimurodov License.

## Contact 📧

If you have any questions or feedback, feel free to reach out:
	•	Name: Ulugbek Abdimurodov
	•	Email: abdimurodovulugbek723@gmail.com

Feel free to replace placeholders like your GitHub username, email, or project screenshots before uploading. Let me know if you need any more adjustments! 🚀
