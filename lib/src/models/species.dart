class StarWarsSpecies {
  final String name;
  final String classification;
  final String designation;
  final String averageHeight;
  final String skinColors;
  final String hairColors;
  final String eyeColors;
  final String averageLifespan;
  final String homeworld;
  final String language;
  final List<String> people;
  final List<String> films;
  final String created;
  final String edited;
  final String url;

  StarWarsSpecies(
      {this.name,
      this.classification,
      this.designation,
      this.averageHeight,
      this.skinColors,
      this.hairColors,
      this.eyeColors,
      this.averageLifespan,
      this.homeworld,
      this.language,
      this.people,
      this.films,
      this.created,
      this.edited,
      this.url});

  static StarWarsSpecies fromJson(Map<String, dynamic> json) {
    return StarWarsSpecies(
      name: json['name'],
      classification: json['classification'],
      designation: json['designation'],
      averageHeight: json['average_height'],
      skinColors: json['skin_colors'],
      hairColors: json['hair_colors'],
      eyeColors: json['eye_colors'],
      averageLifespan: json['average_lifespan'],
      homeworld: json['homeworld'],
      language: json['language'],
      people: json['people']?.cast<String>() ?? [],
      films: json['films']?.cast<String>() ?? [],
      created: json['created'],
      edited: json['edited'],
      url: json['url'],
    );
  }

  @override
  String toString() {
    return 'StarWarsSpecies{name: $name, classification: $classification, designation: $designation, averageHeight: $averageHeight, skinColors: $skinColors, hairColors: $hairColors, eyeColors: $eyeColors, averageLifespan: $averageLifespan, homeworld: $homeworld, language: $language, people: $people, films: $films, created: $created, edited: $edited, url: $url}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StarWarsSpecies &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          classification == other.classification &&
          designation == other.designation &&
          averageHeight == other.averageHeight &&
          skinColors == other.skinColors &&
          hairColors == other.hairColors &&
          eyeColors == other.eyeColors &&
          averageLifespan == other.averageLifespan &&
          homeworld == other.homeworld &&
          language == other.language &&
          people == other.people &&
          films == other.films &&
          created == other.created &&
          edited == other.edited &&
          url == other.url;

  @override
  int get hashCode =>
      name.hashCode ^
      classification.hashCode ^
      designation.hashCode ^
      averageHeight.hashCode ^
      skinColors.hashCode ^
      hairColors.hashCode ^
      eyeColors.hashCode ^
      averageLifespan.hashCode ^
      homeworld.hashCode ^
      language.hashCode ^
      people.hashCode ^
      films.hashCode ^
      created.hashCode ^
      edited.hashCode ^
      url.hashCode;
}
