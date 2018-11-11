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
