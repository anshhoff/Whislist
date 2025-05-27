# Whislist

Whislist is a simple iOS app built using SwiftUI and SwiftData that helps you manage your personal wishlist. Add, view, and delete wishes in a clean, intuitive interface.

## Features

- **Add Wishes**: Quickly add new wishes to your wishlist using the "+" button.
- **View Wishlist**: See all your wishes in a scrollable list, each displayed with a clean title.
- **Delete Wishes**: Remove wishes from your list with a swipe action.
- **Wish Counter**: See the total number of wishes at a glance.
- **Empty State**: Friendly message when your wishlist is empty.

## Screenshots

<div style="display: flex; gap: 10px; justify-content: center;">
  <img src="https://github.com/user-attachments/assets/9199f73c-c4d0-4df0-9529-20175dae6843" alt="Screenshot 1" width="250"/>
    <img src="https://github.com/user-attachments/assets/e1375402-3a85-4caf-807c-524241fbb5be" alt="Screenshot 3" width="250"/>
  <img src="https://github.com/user-attachments/assets/3ad93c9f-92f8-4c6f-80d0-9de9ea21d901" alt="Screenshot 2" width="250"/>

</div>



> Replace the image paths above with your actual screenshot file names placed in a `screenshots` folder in your repo root.  
> The images will be displayed side by side at a medium width.

## Getting Started

### Prerequisites

- Xcode 15 or later
- iOS 17.0 or later (uses SwiftData, which requires iOS 17+)

### Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/anshhoff/Whislist.git
    ```
2. Open `Whislist.xcodeproj` in Xcode.
3. Build and run the project on a simulator or device running iOS 17+.

## Usage

- Tap the "+" button in the top right to add a new wish.
- Enter the wish title and tap "Save".
- Swipe left on a wish to delete it.
- The bottom bar shows the current count of wishes.

## Code Structure

- `WhislistApp.swift`: Main app entry point using SwiftUI.
- `ContentView.swift`: Main UI for displaying and managing the wishlist.
- `WishModel.swift`: Defines the `Wish` data model using SwiftData.

## Technologies Used

- SwiftUI
- SwiftData

## Author

- [Ansh Hardaha](https://github.com/anshhoff)

## License

This project is open source and available under the [MIT License](LICENSE).
