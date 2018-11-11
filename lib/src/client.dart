import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:swapi_client/src/models/person.dart';
import 'package:swapi_client/swapi_client.dart';

/// This class is used to interact with the SWAPI.
class SwapiClient {
  static final Uri baseUri = Uri.parse('https://swapi.co/api/');

  final Client _client;

  /// Constructor that allows us to inject the correct http client. This will
  /// allow us to provide a BrowserClient on the Web, and IOClient for Flutter,
  /// and a MockClient for testing.
  ///
  /// If none is provided, it creates one under the hood.
  SwapiClient({Client client}) : _client = client ?? Client();

  Future<StarWarsPerson> personFromUrl(String url) async {
    final response = await _client.get(url);

    return StarWarsPerson.fromJson(
        json.decode(response.body) as Map<String, dynamic>);
  }

  Future<StarWarsPerson> person(int id) async {
    return personFromUrl('${baseUri}people/$id');
  }

  Future<StarWarsCollection<StarWarsPerson>> peopleFromUrl(String url) async {
    final response = await _client.get(url);

    return StarWarsCollection.fromPeople(
        json.decode(response.body) as Map<String, dynamic>);
  }

  Future<StarWarsCollection<StarWarsPerson>> people({
    int page = 1,
    String searchTerm,
  }) async {
    assert(page >= 1, 'Page must be larger than 0');

    final uri = baseUri.replace(
      path: '${baseUri.path}people/',
      queryParameters: _buildQueryParams(page, searchTerm),
    );

    return peopleFromUrl('$uri');
  }

  Future<StarWarsFilm> filmFromUrl(String url) async {
    final response = await _client.get(url);

    return StarWarsFilm.fromJson(
        json.decode(response.body) as Map<String, dynamic>);
  }

  Future<StarWarsFilm> film(int id) async {
    return filmFromUrl('${baseUri}films/$id');
  }

  Future<StarWarsCollection<StarWarsFilm>> filmsFromUrl(String url) async {
    final response = await _client.get(url);

    return StarWarsCollection.fromFilms(
        json.decode(response.body) as Map<String, dynamic>);
  }

  Future<StarWarsCollection<StarWarsFilm>> films({
    int page = 1,
    String searchTerm,
  }) async {
    assert(page >= 1, 'Page must be larger than 0');

    final uri = baseUri.replace(
      path: '${baseUri.path}films/',
      queryParameters: _buildQueryParams(page, searchTerm),
    );

    return filmsFromUrl('$uri');
  }

  Future<StarWarsStarship> starshipFromUrl(String url) async {
    final response = await _client.get(url);

    return StarWarsStarship.fromJson(
        json.decode(response.body) as Map<String, dynamic>);
  }

  Future<StarWarsStarship> starship(int id) async {
    return starshipFromUrl('${baseUri}starships/$id');
  }

  Future<StarWarsCollection<StarWarsStarship>> starshipsFromUrl(
      String url) async {
    final response = await _client.get(url);

    return StarWarsCollection.fromStarships(
        json.decode(response.body) as Map<String, dynamic>);
  }

  Future<StarWarsCollection<StarWarsStarship>> starships({
    int page = 1,
    String searchTerm,
  }) async {
    assert(page >= 1, 'Page must be larger than 0');

    final uri = baseUri.replace(
      path: '${baseUri.path}starships/',
      queryParameters: _buildQueryParams(page, searchTerm),
    );

    return starshipsFromUrl('$uri');
  }

  Future<StarWarsSpecies> speciesFromUrl(String url) async {
    final response = await _client.get(url);

    return StarWarsSpecies.fromJson(
        json.decode(response.body) as Map<String, dynamic>);
  }

  Future<StarWarsSpecies> species(int id) async {
    return speciesFromUrl('${baseUri}species/$id');
  }

  Future<StarWarsCollection<StarWarsSpecies>> speciesCollectionFromUrl(
    String url,
  ) async {
    final response = await _client.get(url);

    return StarWarsCollection.fromSpecies(
        json.decode(response.body) as Map<String, dynamic>);
  }

  Future<StarWarsCollection<StarWarsSpecies>> speciesCollection({
    int page = 1,
    String searchTerm,
  }) async {
    assert(page >= 1, 'Page must be larger than 0');

    final uri = baseUri.replace(
      path: '${baseUri.path}species/',
      queryParameters: _buildQueryParams(page, searchTerm),
    );

    return speciesCollectionFromUrl('$uri');
  }

  Future<StarWarsPlanet> planetFromUrl(String url) async {
    final response = await _client.get(url);

    return StarWarsPlanet.fromJson(
        json.decode(response.body) as Map<String, dynamic>);
  }

  Future<StarWarsPlanet> planet(int id) async {
    return planetFromUrl('${baseUri}planets/$id');
  }

  Future<StarWarsCollection<StarWarsPlanet>> planetsFromUrl(String url) async {
    final response = await _client.get(url);

    return StarWarsCollection.fromPlanets(
        json.decode(response.body) as Map<String, dynamic>);
  }

  Future<StarWarsCollection<StarWarsPlanet>> planets({
    int page = 1,
    String searchTerm,
  }) async {
    assert(page >= 1, 'Page must be larger than 0');

    final uri = baseUri.replace(
      path: '${baseUri.path}planets/',
      queryParameters: _buildQueryParams(page, searchTerm),
    );

    return planetsFromUrl('$uri');
  }

  Map<String, String> _buildQueryParams(int page, String searchTerm) {
    final params = <String, String>{};

    if (page != null) params['page'] = '$page';
    if (searchTerm != null && searchTerm.isNotEmpty)
      params['search'] = searchTerm;

    return params;
  }

  Future<StarWarsVehicle> vehicleFromUrl(String url) async {
    final response = await _client.get(url);

    return StarWarsVehicle.fromJson(
        json.decode(response.body) as Map<String, dynamic>);
  }

  Future<StarWarsVehicle> vehicle(int id) async {
    return vehicleFromUrl('${baseUri}vehicles/$id');
  }

  Future<StarWarsCollection<StarWarsVehicle>> vehiclesFromUrl(
      String url) async {
    final response = await _client.get(url);

    return StarWarsCollection.fromVehicles(
        json.decode(response.body) as Map<String, dynamic>);
  }

  Future<StarWarsCollection<StarWarsVehicle>> vehicles({
    int page = 1,
    String searchTerm,
  }) async {
    assert(page >= 1, 'Page must be larger than 0');

    final uri = baseUri.replace(
      path: '${baseUri.path}vehicles/',
      queryParameters: _buildQueryParams(page, searchTerm),
    );

    return vehiclesFromUrl('$uri');
  }
}
