# Flutter MUI Starter

Flutter Starter using Material Design UI.

## Prerequisites

Before cloning the project, please ensure you have the following software installed on your system:

- [Flutter (via FVM)](https://fvm.app/docs/getting_started/installation)
- [Dart SDK](https://dart.dev/get-dart)
- [Android Studio and Xcode (for respective platforms)](https://developer.android.com/studio/install?gclid=CjwKCAjwkLCkBhA9EiwAka9QRqyhH_JdXd7jkPc2woM2s7DkaxkS53l1_dmqVGXYsmnrRqySiZn--hoCbd4QAvD_BwE&gclsrc=aw.ds)
- [Cocoapods (for iOS dependencies)](https://cocoapods.org/)

## Project Setup

Follow these instructions to set up the project locally on your system:

1. Clone the repository:

   ```
   git clone https://gitlab.com/bastosmichael/flutter-mui-starter.git
   ```

2. Change directory to the project folder:

   ```
   cd flutter-mui-starter
   ```

3. Install FVM:

   ```
   dart pub global activate fvm
   ```

4. Set the Flutter version for this project:

   ```
   fvm use stable
   ```

5. Get the packages:
   ```
   flutter pub get
   ```

## Running the Project

### Development Environment

To run the application in debug mode, run the following command in the project directory:

```
flutter run
```

### Production Environment

To run the application in release mode, run the following command in the project directory:

```
flutter run --release
```

## Building the Project

### Android

To create an APK for the application, run the following command in the project directory:

```
flutter build apk --release
```

This will generate an APK file in the `build/app/outputs/flutter-apk/` directory.

### iOS

To create an IPA for the application, you'll first need to create a build archive. Navigate to the ios folder (`cd ios`) in your project directory and then:

```
xcodebuild archive -scheme Runner -archivePath ../build/Runner.xcarchive
```

Then to create the IPA, use the following command:

```
xcodebuild -exportArchive -archivePath build/Runner.xcarchive -exportOptionsPlist ExportOptions.plist -exportPath build
```

## Deployment

### Google Play Store

1. Follow the guide here to upload your APK: [Publish your app](https://support.google.com/googleplay/android-developer/answer/113469)

### iOS App Store

1. Follow the guide here to upload your IPA: [Distribute an app through App Store](https://help.apple.com/xcode/mac/current/#/dev067853c94)

# API Server

Written in [Go](https://go.dev/) check documentation for install.

## Build the Server

```shell
cd server
mkdir -p bin
go build -o ./bin ./...
```

## Run the Server

```shell
./bin/server
```

## Check the Server

```shell
curl localhost:3000/ping
# output: pong
```


# Documentation

[MDBook](https://rust-lang.github.io/mdbook)

To add pages, update the `docs/SUMMARY.md` file.
MDBook will automatically create the file if it doesn't exist during a build or serve which is the easiest way to add
content.

## Serving documentation locally

```shell
mdbook serve
```


## Contribution

Please read `CONTRIBUTING.md` for details on our code of conduct, and the process for submitting pull requests.

## License

This project is licensed under the MIT License - see the `LICENSE.md` file for details.
