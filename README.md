# Custom Authetication Flutter

## Ensure you have sample server running

- [Backend Server](https://github.com/dartbucket/sample-auth-server)
- Run the server (copy the local server url)

## Getting started

- Clone this repository to follow tutorial

```bash
git clone https://github.com/dartbucket/sample-auth-server
```

- Run

```bash
flutter pub get
```

- Update the lib/src/const/endpoints.dart

```dart
class Endpoints {
  const Endpoints._();

  static const baseUrl = "<url you copied after running local server>";
}
```

## Follow the tutorial here

[![Watch on YouTube](https://img.youtube.com/vi/79yCGp2GNPk/maxresdefault.jpg)](https://www.youtube.com/watch?v=79yCGp2GNPk)

## [Solution Available here](https://github.com/dartbucket/flutter_auth/tree/complete-solution)
