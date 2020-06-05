import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/fav_pokemon.dart';
import '../providers/pokemons.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // @override
  // void initState() {
  //   super.initState();
  // }
  var _isInit = true;
  var _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
    }
    Provider.of<Pokemons>(context).getPokemons().then((_) {
      _isLoading = false;
    });
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // final pokemons = Provider.of<Pokemons>(context);

    // void searchAPI() async {
    //   await pokemons;
    //   print(pokemons);
    // }

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
