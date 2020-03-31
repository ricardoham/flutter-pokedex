import 'package:flutter/material.dart';
import '../widgets/fav_pokemon.dart';

class Dashboad extends StatefulWidget {
  Dashboad({Key key}) : super(key: key);

  @override
  _DashboadState createState() => _DashboadState();
}

class _DashboadState extends State<Dashboad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter Pokedex!'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Card(
              child: Container(
            child: TextField(
              decoration: InputDecoration(labelText: 'Search Pokemon: '),
            ),
          )),
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
