# Counter App with Theme Management

This is a simple **Counter App** built using Flutter. The app demonstrates state management using Cubit (part of the Bloc library) and a clean implementation of light/dark theme switching.

---

## **Features**

- **Increment/Decrement Counter**: Users can increase or decrease the counter value with simple buttons.
- **Light and Dark Mode**: Toggle between light and dark themes seamlessly.
- **State Management**: Uses Cubit for managing counter state and theme switching.

---

## **Project Structure**

The project follows a clean and modular structure:

```
lib/
├── cubits/
│   ├── counter/
│   │   └── counter_cubit.dart         # Handles counter state
│   └── toggle_theme/
│       └── theme_cubit.dart          # Manages theme state (light/dark)
├── screens/
│   ├── counter_screen.dart           # Main screen UI for the counter app
│   └── counter_view.dart             # UI logic for the counter view
├── themes/
│   └── app_themes.dart               # Centralized theme data
├── app.dart                          # Application root widget
└── main.dart                         # Entry point of the app
```

---

## **Technologies Used**

- **Flutter**: Framework for building the app.
- **Cubit (Bloc library)**: For state management.
- **Google Fonts**: Poppins font integration for a polished UI.
- **Shared preferences**: to store preferences

---

## **How to Run the Project**

1. **Clone the Repository**:
   ```bash
   git clone <repository-url>
   cd <project-folder>
   ```

2. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the App**:
   ```bash
   flutter run
   ```
   
4. **Supported Platforms**:
   - Android
   - iOS
   - Web

---

## **Screenshots**

### App preview
![Counter_Cubits_Bloc](assets/app_preview.gif)

---

## **Author**

**Musa Maluleke**  

---
Feel free to connect or contribute! 😊
