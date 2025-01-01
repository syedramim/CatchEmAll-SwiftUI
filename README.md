# CatchEmAll App

## Overview
CatchEmAll is a SwiftUI app that uses the [PokéAPI](https://pokeapi.co/) to display a list of Pokémon. It loads basic details such as a Pokémon’s name, height, and weight, and provides a searchable interface. You can tap on any Pokémon to view more information, including an official artwork image.

## Features
- **SwiftUI & AsyncImage**: Utilizes SwiftUI's `AsyncImage` to load and display Pokémon images asynchronously.
- **Async/Await Networking**: Fetches data asynchronously using Swift Concurrency for a smooth user experience.
- **Searchable List**: Filter Pokémon by name using SwiftUI’s built-in search functionality.
- **Incremental Loading**: Automatically loads additional Pokémon when scrolling to the bottom of the list.
- **Option to Load All**: A toolbar button that fetches all remaining Pokémon at once.

## Project Structure
- **CatchEmAllApp**: Entry point for the SwiftUI app.
- **Creature**: Model struct conforming to `Codable` and `Identifiable` to store Pokémon data.
- **CreaturesViewModel**: Handles fetching and pagination logic for Pokémon data from the PokéAPI.
- **CreatureDetailViewModel**: Fetches and stores detailed data for a selected Pokémon, including height, weight, and image URLs.
- **CreaturesListView**: Displays a scrollable list of Pokémon, supports searching, and includes a button to load all Pokémon.
- **DetailView**: Shows details for a selected Pokémon, including an image, height, and weight.

## Getting Started
1. **Clone or Download** the repository from GitHub.
2. **Open** the project in Xcode (version supporting SwiftUI).
3. **Run** the project on an iOS Simulator or a physical device.
4. **Explore** the list of Pokémon, use the search bar to find specific ones, and tap on any entry to see more details.

## Requirements
- iOS 15.0+ 
- Xcode 13.0+
- Swift 5.5+

## Usage
- **Scrolling** automatically triggers loading of additional Pokémon if available.
- **Search Bar** (in the navigation bar) filters Pokémon by name.
- **Load All Button** (in the bottom toolbar) retrieves every remaining Pokémon in one go.

## Credit & Resources
- **Professor’s YouTube Playlist**: [SwiftUI Tutorials](https://www.youtube.com/playlist?list=PL9VJ9OpT-IPSM6dFSwQCIl409gNBsqKTe) – Used as a primary reference for building the core structure and functionality.
- **PokéAPI**: [PokéAPI.co](https://pokeapi.co/) – Free Pokémon API providing data for names, sprites, stats, etc.

## License
Feel free to use and modify this project for educational or personal use. If you plan to publish it or incorporate significant parts of its code in your own work, please provide attribution to the original author and references noted here.
