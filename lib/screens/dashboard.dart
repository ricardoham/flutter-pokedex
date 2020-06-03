import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/fav_pokemon.dart';
import '../providers/pokemons.dart';

class Dashboad extends StatefulWidget {
  Dashboad({Key key}) : super(key: key);
  @override
  _DashboadState createState() => _DashboadState();
}

class _DashboadState extends State<Dashboad> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pokemons = Provider.of<Pokemon>(context).fetchPokemons();

    void searchAPI() async {
      await pokemons;
      print(pokemons);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter Pokedex!'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            child: SizedBox(
              width: double.infinity,
              child: FlatButton.icon(
                label: Text('Search'),
                icon: Icon(Icons.search),
                onPressed: () {
                  searchAPI();
                  // Navigator.pushNamed(context, '/search');
                },
              ),
            ),
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
