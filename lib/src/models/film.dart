class StarWarsFilm {
  final String title;
  final int episodeId;
  final String openingCrawl;
  final String director;
  final String producer;
  final String releaseDate;
  final List<String> characters;
  final List<String> planets;
  final List<String> starships;
  final List<String> vehicles;
  final List<String> species;
  final String created;
  final String edited;
  final String url;

  StarWarsFilm({
    this.title,
    this.episodeId,
    this.openingCrawl,
    this.director,
    this.producer,
    this.releaseDate,
    this.characters,
    this.planets,
    this.starships,
    this.vehicles,
    this.species,
    this.created,
    this.edited,
    this.url,
  });

  static StarWarsFilm fromJson(Map<String, dynamic> json) {
    return StarWarsFilm(
      title: json['title'],
      episodeId: json['episode_id'],
      openingCrawl: json['opening_crawl'],
      director: json['director'],
      producer: json['producer'],
      releaseDate: json['release_date'],
      characters: json['characters']?.cast<String>() ?? [],
      planets: json['planets']?.cast<String>() ?? [],
      starships: json['starships']?.cast<String>() ?? [],
      vehicles: json['vehicles']?.cast<String>() ?? [],
      species: json['species']?.cast<String>() ?? [],
      created: json['created'],
      edited: json['edited'],
      url: json['url'],
    );
  }

  @override
  String toString() {
    return 'Film{title: $title, episodeId: $episodeId, openingCrawl: $openingCrawl, director: $director, producer: $producer, releaseDate: $releaseDate, characters: $characters, planets: $planets, starships: $starships, vehicles: $vehicles, species: $species, created: $created, edited: $edited, url: $url}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StarWarsFilm &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          episodeId == other.episodeId &&
          openingCrawl == other.openingCrawl &&
          director == other.director &&
          producer == other.producer &&
          releaseDate == other.releaseDate &&
          characters == other.characters &&
          planets == other.planets &&
          starships == other.starships &&
          vehicles == other.vehicles &&
          species == other.species &&
          created == other.created &&
          edited == other.edited &&
          url == other.url;

  @override
  int get hashCode =>
      title.hashCode ^
      episodeId.hashCode ^
      openingCrawl.hashCode ^
      director.hashCode ^
      producer.hashCode ^
      releaseDate.hashCode ^
      characters.hashCode ^
      planets.hashCode ^
      starships.hashCode ^
      vehicles.hashCode ^
      species.hashCode ^
      created.hashCode ^
      edited.hashCode ^
      url.hashCode;
}
