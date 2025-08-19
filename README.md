🛒 E-Commerce App – Flutter + Firebase

A simple E-Commerce mobile application built as a first-year second-semester project.
This app allows users to browse products, view categories, manage profiles, and interact with a Firebase backend.

✨ Features

🏠 Home Screen with product listings

📂 Categories & Models for products

👤 Profile Screen with user details

💬 Chat UI (with sender & receiver bubbles)

🔐 Firebase authentication & configuration

🎨 Custom reusable widgets

📂 Project Structure
ecommerce_app/
├── lib/
│   ├── components/          # Reusable components
│   ├── consts/              # App constants (colors, styles, images)
│   ├── controllers/         # State management controllers
│   ├── models/              # Data models (Product, Category, User, etc.)
│   ├── services/            # Firebase & API services
│   ├── views/               # Screens (Home, Profile, Cart, etc.)
│   ├── widgets_common/      # Shared widgets (SenderBubble, buttons, etc.)
│   ├── firebase_options.dart# Firebase config
│   └── main.dart            # App entry point
└── README.md

🚀 Getting Started
1. Clone the repo
git clone https://github.com/your-username/ecommerce_app.git
cd ecommerce_app

2. Install dependencies
flutter pub get

3. Setup Firebase

Create a Firebase project at Firebase Console

Add Android/iOS apps

Download google-services.json (for Android) or GoogleService-Info.plist (for iOS)

Update firebase_options.dart with your Firebase config

4. Run the app
flutter run

🛠️ Tech Stack

Frontend → Flutter (Dart)

Backend → Firebase (Auth, Firestore, Storage)

State Management → Controllers (GetX/Provider)

🤝 Contributing

Contributions are welcome. Feel free to fork the repo and submit a pull request.
