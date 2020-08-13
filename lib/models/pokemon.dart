class Pokemon {
  final String name;
  final dynamic sprites;

  Pokemon({this.name, this.sprites});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'] as String,
      sprites: json['sprites'] as dynamic,
    );
  }
}
