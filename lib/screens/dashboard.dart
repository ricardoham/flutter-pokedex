import 'package:flutter/material.dart';
import 'package:flutter_pokedex/widgets/search_results.dart';
import 'package:provider/provider.dart';
import '../widgets/search.dart';
import '../widgets/fav_pokemon.dart';
import '../providers/pokemons.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool _isLoading;
  var _textQuery = '';
  setLoading(bool state) => setState(() => _isLoading = state);

  Future<void> handleSearchPokemon() async {
    try {
      print(_textQuery);
      setLoading(true);
      await Provider.of<Pokemons>(context, listen: false)
          .getPokemons(_textQuery.toLowerCase());
      setLoading(false);
    } catch (error) {
      setLoading(false);
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    void handleSearch(String query) {
      setState(() {
        _textQuery = query;
      });
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
            onPressed: handleSearchPokemon,
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: FavPokemon(),
            ),
          ),
          _isLoading == null
              ? Text('Not Searched yet')
              : _isLoading ? Text('Loading') : SearchResults()
        ],
      ),
    );
  }
}
