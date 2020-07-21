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
  var _textQuery = '';

  @override
  Widget build(BuildContext context) {
    final pokemons = Provider.of<Pokemons>(context);

    void handleSearch(String query) {
      // print('Query ' + query);
      setState(() {
        _textQuery = query;
      });
    }

    // print('aaaTEXT $_textQuery');
    print(pokemons.toString());
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
              pokemons.getPokemons(_textQuery);
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
