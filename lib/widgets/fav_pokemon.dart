import 'package:flutter/material.dart';

class FavPokemon extends StatefulWidget {
  FavPokemon({Key key}) : super(key: key);

  @override
  _FavPokemonState createState() => _FavPokemonState();
}

class _FavPokemonState extends State<FavPokemon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Your Favority Pokemon: '),
    );
  }
}
