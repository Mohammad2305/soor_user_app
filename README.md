# Soor User App

Soor is a mobile app for booking security services. This repository contains the **UI implementation** of the Soor User App in Flutter, built from the Figma design as part of a Flutter training task.

> The focus of this project is UI. There is no real API or backend integration. All dynamic data comes from mock/static data.

## Design

Figma: [Soor User App](https://www.figma.com/design/fYiGnNCHAtL00e2RsNpA8H/Soor-user-app?node-id=0-1&p=f&t=ktWYok0VedTMxX0O-0)

## Features

- **Auth:** login, sign up, verification code, forgot password
- **Home:** browse and select security services
- **Orders:** booking flow and order list with tabs/filters
- **Profile:** user information and editing
- **Notifications:** notifications list
- **Settings:** app settings and language selection
- Interactive UI: forms with validation, tabs, filters, dropdowns, dialogs and bottom sheets
- Loading, empty and error states
- Responsive layout for different screen sizes
- Arabic and English localization

## Tech Stack

| Area | Technology |
|---|---|
| Framework | Flutter (Dart) |
| State management | Cubit / Bloc (`flutter_bloc`) |
| Navigation | GoRouter |
| Architecture | Feature-First Clean Architecture |
| Responsive UI | `flutter_screenutil` |
| Forms | `flutter_form_builder`, `form_builder_validators` |
| Localization | `flutter_localization`, `intl` |
| UI extras | `flutter_svg`, `lottie`, `carousel_slider`, `smooth_page_indicator`, `skeletonizer` |

## Project Structure

```
lib/
├── main.dart
├── core/
│   ├── const/
│   ├── cubit/
│   ├── di/
│   ├── error/
│   ├── helper/
│   ├── models/
│   ├── network/
│   ├── repo/
│   ├── routes/
│   ├── themes/
│   │   ├── colors/
│   │   ├── styles/
│   │   └── theme/
│   ├── utils/
│   └── widgets/          # shared reusable widgets
└── features/
    ├── auth/
    ├── home/
    ├── profile/
    ├── notifications/
    ├── settings/
    └── orders/
```

Each feature has its own `data` and `presentation` layers. UI code and logic are kept separate, and repeated UI is extracted into reusable widgets in `core/widgets`. Assets (images, SVGs, Lottie files, fonts) are organized inside `assets/`.

## Getting Started

### Prerequisites

- Flutter SDK (stable channel)
- Android Studio with an emulator, or a physical device
- JDK 17 or newer (the one bundled with Android Studio works)
- On Windows: Developer Mode enabled (needed for plugin symlinks)

### Run the app

```bash
git clone https://github.com/Mohammad2305/soor_user_app.git
cd soor_user_app
flutter pub get
flutter run
```

### Build an APK

```bash
flutter build apk --release
```

The APK is created in `build/app/outputs/flutter-apk/`.

## Troubleshooting

- **`Building with plugins requires symlink support`:** enable Developer Mode in Windows settings.
- **`JAVA_HOME is set to an invalid directory`:** point `JAVA_HOME` to the JDK root folder, without `\bin`.
- **Strange build errors after switching branches or merging:** run `flutter clean`, then `flutter pub get`.

## Author

Mohammad ([@Mohammad2305](https://github.com/Mohammad2305))
