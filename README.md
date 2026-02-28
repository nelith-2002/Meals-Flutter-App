# 🍽️ Meals App

A modern Flutter application for browsing and managing meal recipes with advanced filtering capabilities, built using **Riverpod** for state management.

## 📱 Features

- **Browse Meal Categories**: Explore 10 different food categories (Italian, Asian, German, French, etc.)
- **Detailed Meal Information**: View ingredients, cooking steps, duration, complexity, and affordability
- **Favorites Management**: Mark meals as favorites with animated star icon feedback
- **Advanced Filtering**: Filter meals by dietary preferences:
  - Gluten-free
  - Lactose-free
  - Vegetarian
  - Vegan
- **Tab Navigation**: Switch between Categories and Favorites views
- **Reactive UI**: Real-time updates across screens using Riverpod providers
- **Material Design 3**: Modern dark theme with Google Fonts (Lato)

## 🏗️ Architecture

This app implements a clean architecture using **Riverpod** for state management:

### State Management Providers

- **`filterProvider`** - Manages dietary filter preferences
- **`favoriteMealsProvider`** - Handles favorite meals list
- **`mealsProvider`** - Provides the complete meals dataset
- **`filteredMealsProvider`** - Computed provider for filtered meals based on active filters
- **`selectedTabProvider`** - Manages bottom navigation tab selection

### Key Benefits

✅ **Single Source of Truth** - All state centralized in providers  
✅ **Automatic Reactivity** - UI updates automatically when state changes  
✅ **No Prop Drilling** - Direct access to state from any widget  
✅ **Testable** - Easy to test business logic independently  
✅ **DevTools Support** - Full debugging capabilities with Riverpod DevTools

## 🗂️ Project Structure

```
lib/
├── main.dart                          # App entry point with ProviderScope
├── data/
│   └── dummy_data.dart               # Sample meals and categories data
├── model/
│   ├── category.dart                 # Category model
│   └── meals.dart                    # Meal model with enums
├── providers/
│   ├── favorites_provider.dart       # Favorites state management
│   ├── filters_provider.dart         # Filter state management
│   ├── meals_provider.dart           # Meals data & filtered meals provider
│   └── navigation_provider.dart      # Tab navigation state
├── screens/
│   ├── categories.dart               # Category grid screen
│   ├── filter.dart                   # Filter settings screen
│   ├── meal_details.dart             # Meal details with favorite toggle
│   ├── meals.dart                    # Meals list screen
│   └── tabs.dart                     # Main tab navigation screen
└── widgets/
    ├── category_grid_item.dart       # Category card widget
    ├── main_drawer.dart              # Navigation drawer
    ├── meal_item.dart                # Meal card widget
    └── meal_item_trait.dart          # Meal trait display widget
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (^3.11.0)
- Dart SDK (^3.11.0)
- Android Studio / VS Code with Flutter extensions

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/nelith-2002/Meals-Flutter-App.git
   cd meals_app
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## 📦 Dependencies

- **flutter_riverpod**: ^2.5.1 - State management solution
- **google_fonts**: ^8.0.2 - Custom fonts (Lato)
- **transparent_image**: ^2.0.1 - Image loading placeholder
- **cupertino_icons**: ^1.0.8 - iOS style icons

## 🎨 UI Features

### Screens

1. **Categories Screen**
   - Grid view of meal categories
   - Color-coded category cards
   - Navigate to filtered meals per category

2. **Meals Screen**
   - List of meals matching filters/category
   - Meal cards with image, title, and metadata
   - Duration, complexity, and affordability indicators

3. **Meal Details Screen**
   - Hero image
   - Complete ingredients list
   - Step-by-step cooking instructions
   - Animated favorite toggle button

4. **Filters Screen**
   - Toggle switches for dietary preferences
   - Real-time filter application
   - Persistent filter state

5. **Favorites Screen**
   - Quick access to bookmarked meals
   - Empty state messaging
   - Same layout as meals list

## 🔄 State Flow Examples

### Adding a Favorite

```
User taps star icon → favoriteMealsProvider.toggleMealFavoriteStatus()
→ State updates → UI rebuilds automatically → SnackBar confirmation
```

### Applying Filters

```
User toggles filter → filterProvider.updateX(value) → filteredMealsProvider
recomputes → Categories screen rebuilds with filtered meals
```

### Tab Navigation

```
User taps tab → selectedTabProvider.selectTab(index) → TabsScreen rebuilds
→ Correct page displayed
```

## 🧪 Testing

Run tests with:

```bash
flutter test
```

## 📱 Platform Support

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is open source and available for educational purposes.

## 👨‍💻 Developer

**Nelith**  
GitHub: [@nelith-2002](https://github.com/nelith-2002)

## 📚 Learning Resources

This project demonstrates:

- Flutter Riverpod state management
- Navigation and routing
- Custom widgets and composition
- Material Design 3 theming
- Responsive layouts
- State persistence across screens

---

Built with ❤️ using Flutter & Riverpod
