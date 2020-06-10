import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/search.dart';
import '../widgets/fav_pokemon.dart';
import '../providers/pokemons.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final pokemons = Provider.of<Pokemons>(context);
    var textQuery = '';

    void handleSearch(String query) async {
      setState(() {
        textQuery = query;
      });
      print(textQuery);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter Pokedex!'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Search(handleSearch),
          FlatButton(
            child: Text('Buscar'),
            onPressed: () {
              pokemons.getPokemons(textQuery);
            },
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: FavPokemon(),
            ),
          ),
        ],
      ),
    );
  }
}
