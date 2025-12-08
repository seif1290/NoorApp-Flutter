#  Noor – Quran Listening App - Flutter

**Noor** is a Flutter based Quran listening application that allows users to listen to Quran recitations from multiple reciters with high quality audio streaming.  
The app currently supports Arabic and English and provides a smooth and clean experience with onboarding screens and customizable settings.

---

##  Features

###  Current Features
-  Listen to Quran recitations from a list of reciters.
-  Choose your preferred reciter easily from the settings.
-  Supports two languages: Arabic (AR) and English (EN).
-  Settings screen to manage:
    - App language  
    - Preferred reciter  
-  Onboarding experience with three introductory screens.
-  High-quality audio streaming using **just_audio**.
-  Quran metadata (surah names, ayahs, etc.) stored and loaded locally from assets.

###  Planned Future Features
-  Interactive Mushaf – read the Quran inside the app.
-  Ahadith Section – browse selected authentic Hadith collections.
-  Adhkar – morning & evening adhkar + reminders.
-  Tasbeeh Counter – digital tasbeeh with history tracking.

---

##  Tech Stack

###  Frontend
- Flutter **3.35.0**
- Dart

### Architecture
- **MVVM + Clean Architecture**
- State Management:  
  - BLoC / Cubit  
  - Provider  
- Dependency Injection:  
  - get_it  

### Networking
- Dio  
- Pretty Dio Logger  
- just_audio (for streaming)

### Localization
- flutter_localizations  
- intl  

---

##  Dependencies

```yaml
bloc: ^9.1.0
cupertino_icons: ^1.0.8
dartz: ^0.10.1
dio: ^5.9.0
equatable: ^2.0.7
flutter_bloc: ^9.1.1
flutter_launcher_icons: ^0.14.4
flutter_localizations:
flutter_native_splash: ^2.4.6
flutter_screenutil: ^5.9.3
freezed: ^3.2.3
freezed_annotation: ^3.1.0
gap: ^3.0.1
get_it: ^9.1.1
go_router: ^17.0.0
intl: ^0.20.2
json_annotation: ^4.9.0
just_audio: ^0.10.5
pretty_dio_logger: ^1.4.0
provider: ^6.1.5+1
shared_preferences: ^2.5.3

```
---

## Project Structure (Overview)

The app follows MVVM + Clean Architecture:
```
lib/
├── core/
│ ├── data/
│ ├── di/
│ ├── error_handling/
│ ├── routing/
│ ├── theme/
│ ├── ui/
│ ├── utils/
│
├── features/
│ ├── onboarding/
│ │ ├── data/
│ │ └── presentation/
│ │
│ ├── home/
│ │ ├── data/
│ │ ├── domain/
│ │ └── presentation/
│ │
│ └── settings/
│ ├── data/
│ └── presentation/
├── localization/
│ ├── l10n/
│
└── main.dart
```

---

# Installation & Setup

Follow these steps to run the app locally:

### Clone the repository

```bash
git clone https://github.com/your-username/noor.git
cd noor
```
### Install dependencies

```bash
flutter pub get
```
### Run the app

```bash
flutter run
```

---

## 🤝 Contributing

Contributions are welcome!

Feel free to open issues or submit pull requests.