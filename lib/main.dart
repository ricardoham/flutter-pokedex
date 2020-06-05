import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/pokemons.dart';

import './screens/search_screen.dart';
import './screens/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Pokemons(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter PokeDex',
        theme: ThemeData(
          primaryColor: Colors.red,
          primarySwatch: Colors.blue,
          accentColor: Colors.black,
        ),
        home: Dashboard(),
        // routes: {
        //   '/search': (context) => SearchScreen(),
        // },
      ),
    );
  }
}
