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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            child: SizedBox(
              width: double.infinity,
              child: FlatButton.icon(
                label: Text('Search'),
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.pushNamed(context, '/search');
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
