# 🎬 Movie Explorer - SwiftUI

A sleek and user-friendly iOS movie app developed with **SwiftUI**, offering a smooth experience for discovering films, exploring details, and managing your watchlist.

## 🔥 Features
- Retrieves movies and directors from an external database.
- Displays comprehensive movie information, including **IMDb rating, synopsis, language, and duration**.
- Highlights directors with their profile pictures on the **Movie Details Screen**.
- Enables users to **add movies to their Favorites list**.
- Modern and **responsive SwiftUI interface**.

## 🛠️ Technologies & Tools
- **SwiftUI** - For a declarative and interactive UI.
- **Combine** - To handle async data updates efficiently.
- **URLSession** - For making API requests and retrieving data.
- **MVVM Pattern** - For maintaining clean and scalable architecture.
- **AsyncImage** - To load images from remote sources.
- **EnvironmentObject & StateObject** - To manage shared data across views.

## ⚡ Implementation Details

### 📡 API Integration
- Integrated **Airtable API** for accessing movie and director data.
- Utilized **URLSession** for asynchronous data retrieval.
- Parsed JSON responses into structured Swift models using **Codable**.

### 📊 Data Handling & Display
- Built a **NetworkManager** to manage API interactions.
- Applied **Combine** for efficient state updates.

### 🎥 Movie Details Screen
- Showcases **IMDb rating, runtime, language, and genre**.
- Uses **AsyncImage** to fetch and display movie posters smoothly.
- Displays director profiles with images and relevant details.

## 🚀 How to Get Started
1. Clone the repository:
   ```sh
   git clone https://github.com/ghadasaw21/movieAPPbyGhada.git
