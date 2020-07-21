import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'dart:convert';
import '../models/pokemon.dart';
import '../constants/constants.dart' as Constants;

class Pokemons with ChangeNotifier {
  List<Pokemon> _result = [];

  // Pokemon{} get pokemons {
  //   return [..._result];
  // }

  Future<void> getPokemons(String query) async {
    print('QUERY ' + query);
    try {
      final response =
          await http.get('https://pokeapi.co/api/v2/pokemon/$query');
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      final loadedPokemons = <Pokemon>{};
      // print(extractedData);
      if (response != null) {
        // extractedData['name'].forEach((poke) {
        //   print('OKE' + poke['name']);
        //   loadedPokemons.add(
        //     Pokemon(name: poke['name'], url: poke['url']),
        //   );
        // });
        loadedPokemons.add(Pokemon(name: extractedData['name']));

        // print('aaaaa' + extractedData['name']);
      }
      // _result = loadedPokemons;
      print(loadedPokemons);

      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }
}
