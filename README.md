# swapi_client
[![Build Status](https://travis-ci.org/brianegan/swapi_client.svg?branch=master)](https://travis-ci.org/brianegan/swapi_client) [![codecov](https://codecov.io/gh/brianegan/swapi_client/branch/master/graph/badge.svg)](https://codecov.io/gh/brianegan/swapi_client)

A library that makes it easy to fetch data from SWAPI - The Star Wars API.

This is a pure Dart library which relies on the http package. Therefore, it can
be used cross-platform, from Flutter to Web to server-side.

## Usage

You can fetch data from the Star Wars API without any api or auth tokens. Simply
create an instance of the `SwapiClient` class and start fetching away! 

```dart
import 'package:swapi_client/swapi_client.dart';

void main() async {
  final swapi = SwapiClient();

  // Fetches and prints the list of Star Wars Films
  print(await swapi.films());

  // Fetches and prints the first page of Star Wars characters. Pagination
  // information included as part of the response, so it's easy to create
  // paginated experiences!
  print(await swapi.people());
}

```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/brianegan/swapi_client/issues
