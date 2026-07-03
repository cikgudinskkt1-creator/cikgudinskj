# SciVerse AR Premium - Setup & Build Guide

## Prerequisites
- Flutter SDK (v3.0+)
- Android Studio or Visual Studio Code
- Java Development Kit (JDK 11+)
- Git

## Installation Steps

### 1. Install Flutter
```bash
# Download from https://flutter.dev/docs/get-started/install
# Add Flutter to your PATH
```

### 2. Clone Repository
```bash
git clone https://github.com/cikgudinskkt1-creator/cikgudinskj.git
cd cikgudinskj
```

### 3. Get Dependencies
```bash
flutter pub get
```

### 4. Configure Firebase

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Create a new project named "SciVerse AR Premium"
3. Add Android app
4. Download `google-services.json`
5. Place it in `android/app/`
6. Update Firebase credentials in `lib/firebase_options.dart`

### 5. Build APK (Release)
```bash
flutter build apk --release
```

The APK will be generated at: `build/app/outputs/flutter-app.apk`

### 6. Build AAB for Play Store
```bash
flutter build appbundle --release
```

## Testing Locally

```bash
# Connect Android device or start emulator
flutter run
```

## Features Included

✅ Google Sign-In Authentication
✅ Firebase Realtime Leaderboard
✅ Dashboard with User Stats
✅ AR Learning Module (Placeholder)
✅ AI Chatbot Interface (Ready for OpenAI API)
✅ Badge System Ready
✅ Share via Deep Links

## Deployment to Play Store

1. Sign up for [Google Play Console](https://play.google.com/console)
2. Create new app
3. Generate signed keystore:
```bash
keytool -genkey -v -keystore ~/sciverse-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias sciverse
```

4. Create `android/key.properties`:
```properties
storePassword=YOUR_STORE_PASSWORD
keyPassword=YOUR_KEY_PASSWORD
keyAlias=sciverse
storeFile=../sciverse-key.jks
```

5. Upload AAB to Play Store Console
6. Fill in app details, screenshots, and description
7. Submit for review

## Sharing via Link

The app supports deep linking. Share links like:
```
https://sciverse.educatit.com/?lesson=biology-101&user=google-user-id
```

## Environment Variables

Update in `lib/firebase_options.dart`:
- `YOUR_PROJECT_ID`
- `YOUR_ANDROID_API_KEY`
- `YOUR_WEB_API_KEY`
- `YOUR_MESSAGING_SENDER_ID`

## Support

For issues or questions, create an issue on GitHub.
