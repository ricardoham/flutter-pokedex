class Pokemon {
  final String name;
  final String sprites;

  Pokemon({this.name, this.sprites});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'] as String,
      sprites: json['sprites']['front_default'] as String,
    );
  }
}
