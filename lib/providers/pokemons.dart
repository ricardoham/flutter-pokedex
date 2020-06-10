import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'dart:convert';
import '../models/pokemon.dart';
import '../constants/constants.dart' as Constants;

class Pokemons with ChangeNotifier {
  List<Pokemon> _result = [];
  Future<void> getPokemons(String query) async {
    print('QUERY ' + query);
    try {
      final response =
          await http.get('https://pokeapi.co/api/v2/pokemon/$query');
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      final List<Pokemon> loadedPokemons = [];
      print(extractedData);
      if (response != null) {
        // extractedData['name'].forEach((poke) {
        //   print('OKE' + poke['name']);
        //   loadedPokemons.add(
        //     Pokemon(name: poke['name'], url: poke['url']),
        //   );
        // });

        // print('aaaaa' + extractedData['name']);
      }
      // _result = loadedPokemons;
      // print(_result);

      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }
}
