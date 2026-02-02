# Stars - Project Overview

App for actors, artists, musicians, and talented people to share their work.
Interface similar to Instagram, focusing on short videos (up to 5 mins) and photos.

## Tech Stack
- **Framework**: Flutter (Mobile)
- **State Management**: Riverpod + Hooks
- **Navigation**: GoRouter
- **Networking**: Dio
- **Localization**: Russian (Default), English, Spanish, Chinese
- **UI**: Material 3 with Custom "Nebula" Theme (Dark Mode)

## Features
- **Authentication**: Login, Signup screens.
- **Feed**: Instagram-like scrollable feed with mixed media (Video/Photo).
- **Upload**: Interface to upload content.
- **Profile**: User profile with portfolio.
- **Settings**: Language switching and app preferences.

## Architecture
Feature-First Architecture:
- `lib/src/features/`: Contains feature-specific code (auth, feed, profile).
- `lib/src/core/`: Shared utilities, theme, widgets.
- `lib/l10n/`: Localization ARB files.

## Status
- ✅ Project Initialized
- ✅ Dependencies Configured
- ✅ Theme System Implemented
- ✅ Navigation (Router) Setup
- ✅ Localization (RU, EN, ES, ZH) Added
- ✅ Basic Feed UI with Mock Data
