# Pocket Museum — Flutter/Dart Demo

A small Flutter app written in Dart. It demonstrates a simple Material 3 UI for **discover objects and their stories**.

## Features
- Flutter UI built from reusable widgets
- Sample data included in `lib/main.dart`
- Widget smoke test in `test/widget_test.dart`
- GitHub Actions workflow runs dependency resolution, analysis, tests, creates Android scaffolding, builds a debug APK, and uploads it as an artifact

## Build with GitHub Actions
1. Create a separate GitHub repository for this folder.
2. Push the files to the repository's `main` branch.
3. Open **Actions** and select **Flutter Android Build**.
4. Download `flutter-debug-apk` from the successful workflow run.

## Local development
Install Flutter stable, then run:

```bash
flutter pub get
flutter analyze
flutter test
flutter run
```

The workflow generates Android platform files with `flutter create --platforms=android .` before building the APK. This keeps the starter repo small and lets GitHub Actions prepare the Android project on its runner.

## Notes
This is a learning/demo app. Data is static and no backend, sign-in, or persistence is configured.
