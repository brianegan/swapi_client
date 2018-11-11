import 'package:swapi_client/src/models/film.dart';
import 'package:swapi_client/src/models/person.dart';
import 'package:swapi_client/src/models/planet.dart';
import 'package:swapi_client/src/models/species.dart';
import 'package:swapi_client/src/models/starship.dart';
import 'package:swapi_client/src/models/vehicle.dart';

class StarWarsCollection<T> {
  final int count;
  final String next;
  final String previous;
  final List<T> results;

  StarWarsCollection({this.count, this.next, this.previous, this.results});

  static StarWarsCollection<T> from<T>(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic> itemJson) itemMapper,
  ) {
    return StarWarsCollection<T>(
        count: json['count'],
        next: json['next'],
        previous: json['previous'],
        results: json['results']
                ?.cast<Map<String, dynamic>>()
                ?.map<T>(itemMapper)
                ?.toList() ??
            []);
  }

  static StarWarsCollection<StarWarsPerson> fromPeople(
    Map<String, dynamic> json,
  ) {
    return StarWarsCollection.from<StarWarsPerson>(
      json,
      StarWarsPerson.fromJson,
    );
  }

  static StarWarsCollection<StarWarsFilm> fromFilms(
    Map<String, dynamic> json,
  ) {
    return StarWarsCollection.from<StarWarsFilm>(
      json,
      StarWarsFilm.fromJson,
    );
  }

  static StarWarsCollection<StarWarsStarship> fromStarships(
    Map<String, dynamic> json,
  ) {
    return StarWarsCollection.from<StarWarsStarship>(
      json,
      StarWarsStarship.fromJson,
    );
  }

  static StarWarsCollection<StarWarsVehicle> fromVehicles(
    Map<String, dynamic> json,
  ) {
    return StarWarsCollection.from<StarWarsVehicle>(
      json,
      StarWarsVehicle.fromJson,
    );
  }

  static StarWarsCollection<StarWarsSpecies> fromSpecies(
    Map<String, dynamic> json,
  ) {
    return StarWarsCollection.from<StarWarsSpecies>(
      json,
      StarWarsSpecies.fromJson,
    );
  }

  static StarWarsCollection<StarWarsPlanet> fromPlanets(
    Map<String, dynamic> json,
  ) {
    return StarWarsCollection.from<StarWarsPlanet>(
      json,
      StarWarsPlanet.fromJson,
    );
  }

  @override
  String toString() {
    return 'StarWarsCollection{\ncount: $count,\n next: $next,\n previous: $previous,\n results: $results\n}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StarWarsCollection &&
          runtimeType == other.runtimeType &&
          count == other.count &&
          next == other.next &&
          previous == other.previous &&
          results == other.results;

  @override
  int get hashCode =>
      count.hashCode ^ next.hashCode ^ previous.hashCode ^ results.hashCode;
}
