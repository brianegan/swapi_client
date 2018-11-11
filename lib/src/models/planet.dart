class StarWarsPlanet {
  final String name;
  final String rotationPeriod;
  final String orbitalPeriod;
  final String diameter;
  final String climate;
  final String gravity;
  final String terrain;
  final String surfaceWater;
  final String population;
  final List<String> residents;
  final List<String> films;
  final String created;
  final String edited;
  final String url;

  StarWarsPlanet(
      {this.name,
      this.rotationPeriod,
      this.orbitalPeriod,
      this.diameter,
      this.climate,
      this.gravity,
      this.terrain,
      this.surfaceWater,
      this.population,
      this.residents,
      this.films,
      this.created,
      this.edited,
      this.url});

  static StarWarsPlanet fromJson(Map<String, dynamic> json) {
    return StarWarsPlanet(
      name: json['name'],
      rotationPeriod: json['rotation_period'],
      orbitalPeriod: json['orbital_period'],
      diameter: json['diameter'],
      climate: json['climate'],
      gravity: json['gravity'],
      terrain: json['terrain'],
      surfaceWater: json['surface_water'],
      population: json['population'],
      residents: json['residents']?.cast<String>() ?? [],
      films: json['films']?.cast<String>() ?? [],
      created: json['created'],
      edited: json['edited'],
      url: json['url'],
    );
  }

  @override
  String toString() {
    return 'StarWarsPlanet{name: $name, rotationPeriod: $rotationPeriod, orbitalPeriod: $orbitalPeriod, diameter: $diameter, climate: $climate, gravity: $gravity, terrain: $terrain, surfaceWater: $surfaceWater, population: $population, residents: $residents, films: $films, created: $created, edited: $edited, url: $url}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StarWarsPlanet &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          rotationPeriod == other.rotationPeriod &&
          orbitalPeriod == other.orbitalPeriod &&
          diameter == other.diameter &&
          climate == other.climate &&
          gravity == other.gravity &&
          terrain == other.terrain &&
          surfaceWater == other.surfaceWater &&
          population == other.population &&
          residents == other.residents &&
          films == other.films &&
          created == other.created &&
          edited == other.edited &&
          url == other.url;

  @override
  int get hashCode =>
      name.hashCode ^
      rotationPeriod.hashCode ^
      orbitalPeriod.hashCode ^
      diameter.hashCode ^
      climate.hashCode ^
      gravity.hashCode ^
      terrain.hashCode ^
      surfaceWater.hashCode ^
      population.hashCode ^
      residents.hashCode ^
      films.hashCode ^
      created.hashCode ^
      edited.hashCode ^
      url.hashCode;
}
