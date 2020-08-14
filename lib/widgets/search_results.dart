import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/pokemons.dart';

class SearchResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pokemon = Provider.of<Pokemons>(context, listen: false).poke;
    return Column(
      children: <Widget>[
        Text(pokemon.name),
      ],
    );
  }
}
