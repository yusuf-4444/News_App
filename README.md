 NewsCloud 📰

A modern and elegant news application built with Flutter that fetches the latest news from various categories using the News API.

 ✨ Features

- **Real-time News**: Get the latest headlines from trusted sources
- **Category Navigation**: Browse news by categories (Technology, Business, Entertainment, General, Health, Science, Sports)
- **Beautiful UI**: Clean and modern Material Design interface
- **Image Caching**: Optimized image loading with cached network images
- **Responsive Design**: Adapts to different screen sizes
- **Error Handling**: Graceful error handling and loading states

 📱 Screenshots

| Home Screen | Category View |
|-------------|---------------|
| News categories and general feed | Filtered news by category |

 🚀 Getting Started

 Prerequisites

- Flutter SDK (>=2.0.0)
- Dart SDK
- Android Studio / VS Code
- A device or emulator to run the app

 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/news_app.git
   cd news_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **API Configuration**
   - Get your free API key from [NewsAPI.org](https://newsapi.org/)
   - Replace the API key in `lib/services/news_service.dart`:
   ```dart
   "https://newsapi.org/v2/top-headlines?apiKey=YOUR_API_KEY_HERE&country=us&category=$category"
   ```

4. **Add Assets**
   - Create an `assets` folder in the root directory
   - Add category images:
     - `technology.jpeg`
     - `business.jpg`
     - `entertaiment.jpg`
     - `general.jpg`
     - `health.jpg`
     - `science (1).jpg`
     - `sports.jpg`

5. **Update pubspec.yaml**
   ```yaml
   flutter:
     assets:
       - assets/
   ```

6. **Run the app**
   ```bash
   flutter run
   ```

 🏗️ Project Structure

```
lib/
├── models/
│   ├── article_model.dart      # News article data model
│   └── card_model.dart         # Category card data model
├── services/
│   └── news_service.dart       # API service for fetching news
├── views/
│   ├── home_page_view.dart     # Main home screen
│   ├── card_view.dart          # Category-specific news view
│   ├── cards_view.dart         # Horizontal category cards
│   └── NewsListView.dart       # News articles list
├── widgets/
│   ├── news_widget.dart        # Individual news item widget
│   ├── card_widget.dart        # Category card widget
│   └── news_list_view_builder.dart  # News list builder with FutureBuilder
└── main.dart                   # App entry point
```

 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  dio: ^5.0.0                    # HTTP client for API calls
  cached_network_image: ^3.2.3   # Image caching and loading
```

 🔧 Key Components

 Models
- **ArticleModel**: Represents a news article with image, title, and description
- **CardModel**: Represents a category card with text and image

 Services
- **NewsService**: Handles API communication with News API using Dio

 Views
- **HomePageView**: Main screen with category cards and general news
- **CardView**: Displays news filtered by selected category

 Widgets
- **NewsCategory**: Individual news article display widget
- **CardsCategory**: Category selection card widget
- **NewsListViewBuilder**: Manages async news loading with proper error handling

 🌐 API Integration

The app uses the [News API](https://newsapi.org/) to fetch real-time news data. The service supports:
- Top headlines by country (US)
- Category filtering
- Error handling for network issues

 🎨 UI/UX Features

- **Custom App Bar**: Styled "NewsCloud" branding
- **Horizontal Category Scrolling**: Easy category navigation
- **Vertical News Feed**: Infinite scroll-like experience using CustomScrollView
- **Loading States**: Circular progress indicators during data fetch
- **Error States**: User-friendly error messages
- **Image Placeholders**: Graceful handling of missing images

 🛠️ Development

 Adding New Categories

1. Add the category to `cards_view.dart`:
```dart
CardModel(
  text: "your_category",
  image: "assets/your_image.jpg",
),
```

2. Add the corresponding asset image to the assets folder

Customizing the News Service

The `NewsService` class can be extended to support:
- Different countries
- Custom date ranges
- Search functionality
- Multiple API sources

🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


📞 Support

If you like this project, please give it a ⭐ and feel free to contribute!

For support, email youssefhamed374@gmail.com or create an issue on GitHub.

---

