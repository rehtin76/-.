# Stars App

## Description
Stars is a mobile application for actors, artists, musicians, and other talented people to share their work. Users can upload short videos (up to 5 minutes) and photos. The app features an Instagram-like interface.

## Tech Stack
- **Framework:** Flutter
- **Language:** Dart
- **State Management:** Flutter Riverpod
- **Navigation:** GoRouter
- **Localization:** Flutter Localizations (Intl)

## Features
- **Feed:** Scrollable feed of user content (videos and photos).
- **Upload:** Upload interface for photos and videos (with 5-minute limit check).
- **Profile:** User profile displaying stats and grid of uploaded content.
- **Settings:** Language switcher and logout.
- **Authentication:** Login screen (UI only).

## Languages
- Russian (Default)
- English
- Spanish
- Chinese

## Architecture
The project follows a feature-first architecture:
- `lib/src/features`: Contains feature-specific code (UI, logic).
- `lib/src/common_widgets`: Reusable widgets.
- `lib/src/router`: Navigation configuration.
- `lib/src/utils`: Utilities like LocaleProvider.
- `lib/l10n`: Localization ARB files.

## Changelog
- Initial project setup.
- Implemented core navigation with BottomNavigationBar.
- Added Localization support for RU, EN, ES, ZH.
- Created Feed, Upload, Profile, Settings, and Login screens.
- Integrated Riverpod for state management (Locale).
