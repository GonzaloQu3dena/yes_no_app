# Yes No App

## Summary

**Yes No App** is a mobile application built with Flutter that simulates a chat interface. Users can send messages and receive dynamic "Yes" or "No" responses with accompanying images. The app integrates a simple API and provides a smooth experience with well-designed visual components and real-time message handling.

<p align="center">
  <img src="https://media.discordapp.net/attachments/1313723409972330536/1315361723099648021/image.png?ex=67572191&is=6755d011&hm=f46ab5312f5e85c30d931116369dd3e6c0f1cbf1278664656ce770425d56f042&=&format=webp&quality=lossless&width=318&height=694" alt="app-evidence" width="200"/>
</p>  

## Features

Key features of the project include:

- **Chat interface** with user messages and automated responses.
- **API integration** with `https://yesno.wtf/api` for dynamic answers.
- **Automatic scroll** to keep the view on the latest messages.
- Modern design following Material Design 3 principles.
- Custom widgets:
  - User-sent messages.
  - Automated responses with "Yes" or "No" images.

## Framework

This project was developed using the [Flutter](https://flutter.dev/) framework.

Key libraries and tools used:
- [Dio](https://pub.dev/packages/dio): For HTTP requests.
- [Provider](https://pub.dev/packages/provider): For state management.
- [Material Design](https://material.io/develop/flutter): For UI components.

## Development setup

Follow these steps to get started with this project:

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/yes_no_app.git
    ```

2. Navigate to the project directory:
    ```bash
    cd yes_no_app
    ```

3. Install dependencies:
    ```bash
    flutter pub get
    ```

4. Run the app on an emulator or connected device:
    ```bash
    flutter run
    ```

The app will automatically reload if you make changes to the source files.

## YAML Configuration

Ensure you include the following dependencies in the `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  dio: ^5.0.0
  provider: ^6.0.5

flutter:
  uses-material-design: true
```

## Building the app

To build the project for release, run the following command:

```bash
flutter build apk
```

This will generate the APK file for Android. For iOS, you can use:

```bash
flutter build ios
```

## Contribute to this project

You can contribute to this project by submitting issues or pull requests in the GitHub repository.
