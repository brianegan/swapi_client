import 'package:swapi_client/swapi_client.dart';
import 'package:test/test.dart';

void main() {
  group('Star Wars API Tests', () {
    group('People', () {
      test('should load an individual person', () async {
        final swapi = SwapiClient();

        expect(await swapi.person(1), TypeMatcher<StarWarsPerson>());
      });

      test('should load an individual person by url', () async {
        final swapi = SwapiClient();

        expect(await swapi.personFromUrl('https://swapi.co/api/people/1/'),
            TypeMatcher<StarWarsPerson>());
      });

      test('should load a page of people', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.people(),
          TypeMatcher<StarWarsCollection<StarWarsPerson>>(),
        );
      });

      test('should search for a page of people', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.people(searchTerm: 'a', page: 2),
          TypeMatcher<StarWarsCollection<StarWarsPerson>>(),
        );
      });

      test('should load a page of people by url', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.peopleFromUrl('https://swapi.co/api/people/?page=2'),
          TypeMatcher<StarWarsCollection<StarWarsPerson>>(),
        );
      });
    });

    group('Films', () {
      test('should load an individual film', () async {
        final swapi = SwapiClient();

        expect(await swapi.film(1), TypeMatcher<StarWarsFilm>());
      });

      test('should load an individual film by url', () async {
        final swapi = SwapiClient();

        expect(await swapi.filmFromUrl('https://swapi.co/api/films/1/'),
            TypeMatcher<StarWarsFilm>());
      });

      test('should load a page of films', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.films(),
          TypeMatcher<StarWarsCollection<StarWarsFilm>>(),
        );
      });

      test('should search for a page of films', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.films(searchTerm: 'a', page: 2),
          TypeMatcher<StarWarsCollection<StarWarsFilm>>(),
        );
      });

      test('should load a page of films by url', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.filmsFromUrl('https://swapi.co/api/films/?page=2'),
          TypeMatcher<StarWarsCollection<StarWarsFilm>>(),
        );
      });
    });

    group('Starships', () {
      test('should load an individual starship', () async {
        final swapi = SwapiClient();

        expect(await swapi.starship(1), TypeMatcher<StarWarsStarship>());
      });

      test('should load an individual starship by url', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.starshipFromUrl('https://swapi.co/api/starships/10/'),
          TypeMatcher<StarWarsStarship>(),
        );
      });

      test('should load a page of starships', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.starships(),
          TypeMatcher<StarWarsCollection<StarWarsStarship>>(),
        );
      });

      test('should search for a page of starships', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.starships(searchTerm: 'a', page: 2),
          TypeMatcher<StarWarsCollection<StarWarsStarship>>(),
        );
      });

      test('should load a page of starships by url', () async {
        final swapi = SwapiClient();

        expect(
          await swapi
              .starshipsFromUrl('https://swapi.co/api/starships/?page=2'),
          TypeMatcher<StarWarsCollection<StarWarsStarship>>(),
        );
      });
    });

    group('Species', () {
      test('should load an individual species', () async {
        final swapi = SwapiClient();

        expect(await swapi.species(1), TypeMatcher<StarWarsSpecies>());
      });

      test('should load an individual species by url', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.speciesFromUrl('https://swapi.co/api/species/3/'),
          TypeMatcher<StarWarsSpecies>(),
        );
      });

      test('should load a page of species', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.speciesCollection(),
          TypeMatcher<StarWarsCollection<StarWarsSpecies>>(),
        );
      });

      test('should search for a page of species', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.speciesCollection(searchTerm: 'a', page: 2),
          TypeMatcher<StarWarsCollection<StarWarsSpecies>>(),
        );
      });

      test('should load a page of species by url', () async {
        final swapi = SwapiClient();

        expect(
          await swapi
              .speciesCollectionFromUrl('https://swapi.co/api/species/?page=2'),
          TypeMatcher<StarWarsCollection<StarWarsSpecies>>(),
        );
      });
    });

    group('Planets', () {
      test('should load an individual planet', () async {
        final swapi = SwapiClient();

        expect(await swapi.planet(1), TypeMatcher<StarWarsPlanet>());
      });

      test('should load an individual planet by url', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.planetFromUrl('https://swapi.co/api/planets/1/'),
          TypeMatcher<StarWarsPlanet>(),
        );
      });

      test('should load a page of planets', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.planets(),
          TypeMatcher<StarWarsCollection<StarWarsPlanet>>(),
        );
      });

      test('should search for a page of planets', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.planets(searchTerm: 'a', page: 2),
          TypeMatcher<StarWarsCollection<StarWarsPlanet>>(),
        );
      });

      test('should load a page of planets by url', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.planetsFromUrl('https://swapi.co/api/planets/?page=2'),
          TypeMatcher<StarWarsCollection<StarWarsPlanet>>(),
        );
      });
    });

    group('Vehicles', () {
      test('should load an individual vehicle', () async {
        final swapi = SwapiClient();

        expect(await swapi.vehicle(1), TypeMatcher<StarWarsVehicle>());
      });

      test('should load a vehicle by url', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.vehicleFromUrl('https://swapi.co/api/vehicles/19/'),
          TypeMatcher<StarWarsVehicle>(),
        );
      });

      test('should load a page of vehicles', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.vehicles(),
          TypeMatcher<StarWarsCollection<StarWarsVehicle>>(),
        );
      });

      test('should search for a page of vehicles', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.vehicles(searchTerm: 'a', page: 2),
          TypeMatcher<StarWarsCollection<StarWarsVehicle>>(),
        );
      });

      test('should load a page of vehicles by url', () async {
        final swapi = SwapiClient();

        expect(
          await swapi.vehiclesFromUrl('https://swapi.co/api/vehicles/?page=2'),
          TypeMatcher<StarWarsCollection<StarWarsVehicle>>(),
        );
      });
    });
  });
}
