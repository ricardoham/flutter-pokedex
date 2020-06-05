import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'dart:convert';
import '../models/pokemon.dart';
import '../constants/constants.dart' as Constants;

class Pokemons with ChangeNotifier {
  List<Pokemon> _result = [];
  Future<void> getPokemons() async {
    try {
      final response = await http.get(Constants.URL);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      final List<Pokemon> loadedPokemons = [];
      // print(extractedData['results']);
      if (extractedData['results'] != null) {
        extractedData['results'].forEach((poke) {
          // print(poke);
          loadedPokemons.add(
            Pokemon(name: poke['name'], url: poke['url']),
          );
        });
      }
      _result = loadedPokemons;
      print(_result);

      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }
}
