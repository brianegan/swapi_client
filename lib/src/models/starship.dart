class StarWarsStarship {
  final String name;
  final String model;
  final String manufacturer;
  final String costInCredits;
  final String length;
  final String maxAtmospheringSpeed;
  final String crew;
  final String passengers;
  final String cargoCapacity;
  final String consumables;
  final String hyperdriveRating;
  final String mGLT;
  final String starshipClass;
  final List<String> pilots;
  final List<String> films;
  final String created;
  final String edited;
  final String url;

  StarWarsStarship(
      {this.name,
      this.model,
      this.manufacturer,
      this.costInCredits,
      this.length,
      this.maxAtmospheringSpeed,
      this.crew,
      this.passengers,
      this.cargoCapacity,
      this.consumables,
      this.hyperdriveRating,
      this.mGLT,
      this.starshipClass,
      this.pilots,
      this.films,
      this.created,
      this.edited,
      this.url});

  static StarWarsStarship fromJson(Map<String, dynamic> json) {
    return StarWarsStarship(
      name: json['name'],
      model: json['model'],
      manufacturer: json['manufacturer'],
      costInCredits: json['cost_in_credits'],
      length: json['length'],
      maxAtmospheringSpeed: json['max_atmosphering_speed'],
      crew: json['crew'],
      passengers: json['passengers'],
      cargoCapacity: json['cargo_capacity'],
      consumables: json['consumables'],
      hyperdriveRating: json['hyperdrive_rating'],
      mGLT: json['MGLT'],
      starshipClass: json['starship_class'],
      pilots: json['pilots']?.cast<String>() ?? [],
      films: json['films']?.cast<String>() ?? [],
      created: json['created'],
      edited: json['edited'],
      url: json['url'],
    );
  }

  @override
  String toString() {
    return 'StarWarsStarship{name: $name, model: $model, manufacturer: $manufacturer, costInCredits: $costInCredits, length: $length, maxAtmospheringSpeed: $maxAtmospheringSpeed, crew: $crew, passengers: $passengers, cargoCapacity: $cargoCapacity, consumables: $consumables, hyperdriveRating: $hyperdriveRating, mGLT: $mGLT, starshipClass: $starshipClass, pilots: $pilots, films: $films, created: $created, edited: $edited, url: $url}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StarWarsStarship &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          model == other.model &&
          manufacturer == other.manufacturer &&
          costInCredits == other.costInCredits &&
          length == other.length &&
          maxAtmospheringSpeed == other.maxAtmospheringSpeed &&
          crew == other.crew &&
          passengers == other.passengers &&
          cargoCapacity == other.cargoCapacity &&
          consumables == other.consumables &&
          hyperdriveRating == other.hyperdriveRating &&
          mGLT == other.mGLT &&
          starshipClass == other.starshipClass &&
          pilots == other.pilots &&
          films == other.films &&
          created == other.created &&
          edited == other.edited &&
          url == other.url;

  @override
  int get hashCode =>
      name.hashCode ^
      model.hashCode ^
      manufacturer.hashCode ^
      costInCredits.hashCode ^
      length.hashCode ^
      maxAtmospheringSpeed.hashCode ^
      crew.hashCode ^
      passengers.hashCode ^
      cargoCapacity.hashCode ^
      consumables.hashCode ^
      hyperdriveRating.hashCode ^
      mGLT.hashCode ^
      starshipClass.hashCode ^
      pilots.hashCode ^
      films.hashCode ^
      created.hashCode ^
      edited.hashCode ^
      url.hashCode;
}
