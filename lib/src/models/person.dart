class StarWarsPerson {
  final String name;
  final String height;
  final String mass;
  final String hairColor;
  final String skinColor;
  final String eyeColor;
  final String birthYear;
  final String gender;
  final String homeworld;
  final List<String> films;
  final List<String> species;
  final List<String> vehicles;
  final List<String> starships;
  final String created;
  final String edited;
  final String url;

  StarWarsPerson({
    this.name,
    this.height,
    this.mass,
    this.hairColor,
    this.skinColor,
    this.eyeColor,
    this.birthYear,
    this.gender,
    this.homeworld,
    this.films,
    this.species,
    this.vehicles,
    this.starships,
    this.created,
    this.edited,
    this.url,
  });

  static StarWarsPerson fromJson(Map<String, dynamic> json) {
    return StarWarsPerson(
      name: json['name'],
      height: json['height'],
      mass: json['mass'],
      hairColor: json['hair_color'],
      skinColor: json['skin_color'],
      eyeColor: json['eye_color'],
      birthYear: json['birth_year'],
      gender: json['gender'],
      homeworld: json['homeworld'],
      films: json['films']?.cast<String>() ?? [],
      species: json['species']?.cast<String>() ?? [],
      vehicles: json['vehicles']?.cast<String>() ?? [],
      starships: json['starships']?.cast<String>() ?? [],
      created: json['created'],
      edited: json['edited'],
      url: json['url'],
    );
  }

  @override
  String toString() {
    return 'StarWarsPerson{name: $name, height: $height, mass: $mass, hairColor: $hairColor, skinColor: $skinColor, eyeColor: $eyeColor, birthYear: $birthYear, gender: $gender, homeworld: $homeworld, films: $films, species: $species, vehicles: $vehicles, starships: $starships, created: $created, edited: $edited, url: $url}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StarWarsPerson &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          height == other.height &&
          mass == other.mass &&
          hairColor == other.hairColor &&
          skinColor == other.skinColor &&
          eyeColor == other.eyeColor &&
          birthYear == other.birthYear &&
          gender == other.gender &&
          homeworld == other.homeworld &&
          films == other.films &&
          species == other.species &&
          vehicles == other.vehicles &&
          starships == other.starships &&
          created == other.created &&
          edited == other.edited &&
          url == other.url;

  @override
  int get hashCode =>
      name.hashCode ^
      height.hashCode ^
      mass.hashCode ^
      hairColor.hashCode ^
      skinColor.hashCode ^
      eyeColor.hashCode ^
      birthYear.hashCode ^
      gender.hashCode ^
      homeworld.hashCode ^
      films.hashCode ^
      species.hashCode ^
      vehicles.hashCode ^
      starships.hashCode ^
      created.hashCode ^
      edited.hashCode ^
      url.hashCode;
}
