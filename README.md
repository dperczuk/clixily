# Clixily - Quotes App

This project is created in Flutter using BLoC and Provider.

## Screenshots of the app

![](https://github.com/dperczuk/clixily/blob/fix/cleanup/assets/images/screenshots/fetch_quote_smaller.png)
 [![Add quote page](https://i.postimg.cc/QCPH985p/add-quote.png)](https://postimg.cc/8fR1xVZ5) [![Quotes ListView page](https://i.postimg.cc/Y2XgBk42/quotes-list.png)](https://postimg.cc/MXQX1Cbg)

## Getting Started

Requirements:
- [Flutter SDK](https://flutter.dev/docs/get-started/install) (v3.7.8)
- [Dart SDK](https://dart.dev/get-dart) (>=2.18.6 <3.0.0)
- [Android Studio](https://developer.android.com/studio) (Flamingo or newer)
- [XCode 14.1](https://developer.apple.com/xcode/) or newer (only for Mac users)

Run the following command to see if there are any dependencies you need to install to complete the setup:
```shell
 flutter doctor
```

## How to Use

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/dperczuk/clixily
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies:

```
flutter pub get
```

**Step 3:**

This project uses `freezed` library that works with code generation, execute the following command to generate files:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch
```

*More about [build_runner](https://dart.dev/tools/build_runner)*

## i10n support
More information about using i10n, you can find in [documentation](doc/wiki/localization.md).

## Architecture

This project is based on a combination of Clean Architecture and [BLoC pattern](https://bloclibrary.dev/#/).

![](https://i0.wp.com/resocoder.com/wp-content/uploads/2019/08/Clean-Architecture-Flutter-Diagram.png?w=556&ssl=1)

Every "feature" of the app, will be divided into 3 layers - `presentation`, `domain` and `data`

**Presentation:**

This layer is responsible for UI, and everything which is connected with user interactions.
In most of the cases, it will be divided into 3 packages:
* `cubit` - with all cubits and states used in this feature, responsible for controlling current state of widgets
* `components` - all smaller widgets used in this feature, which could be easily reused in many places
* `pages` - which defines all high level scaffolds, in most cases with some AppBar which includes title and navigation button

**Domain:**
This layer will contain only the core business logic (use cases) and business objects (entities). It should be totally independent of every other layer.

Domain layer will be divided into 3 packages:

* `entities` - all business objects and holders used in a specific features,
* `repositories` - which should contain only abstract definition of repository,
* `usecases` - with classes which encapsulate all the business logic of a particular use case of the app.

**Data:**

The data layer consists of a Repository implementation (the contract comes from the domain layer) and data sources.

This layer contains 2 packages:

* `models` – dart representation of API models, with proper methods for serialization vs deserialization
* `dataproviders` - the data provider's responsibility is to provide raw data. The data provider should be generic and versatile.
* `repositories` - are a wrapper around one or more data providers, should cover all repositories defined inside domain layer

## Folder Structure

Here is the folder structure, with flutter implementation:

```
lib/
|- app/
    |- app.dart
    |- dependencies.dart
    |- environment_config.dart
    |- router.dart
|- core/
    |- data/
    |- dependency_injection/
    |- error/
    |- extensions/
    |- theme/
    |- usecases/
|- features/
    |- common/
        |- ...
    |- home/
        |- ...
    |- quotes/
        |- ...
 |- generated/
        |- ...
 |- l10n/
        |- ...
 |- main.dart
```

### Libraries & Tools Used

The most important packages used in this project:

* [Flutter Bloc](https://pub.dev/packages/flutter_bloc)
* [Dio](https://pub.dev/packages/dio)
* [Freezed](https://pub.dev/packages/freezed)
* [Dartz](https://pub.dev/packages/dartz)
* [Drift](https://pub.dev/packages/drift)
