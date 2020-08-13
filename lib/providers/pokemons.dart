import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'dart:convert';
import '../models/pokemon.dart';

class Pokemons with ChangeNotifier {
  Pokemon _result;

  Pokemon get poke {
    return _result;
  }

  Future<void> getPokemons(String query) async {
    print('QUERY ' + query);
    try {
      final response =
          await http.get('https://pokeapi.co/api/v2/pokemon/$query');
      final extractedData = json.decode(response.body) as Map<String, dynamic>;

      if (response != null) {
        Pokemon loadedPokemons = Pokemon(
          name: extractedData['name'],
          sprites: extractedData['sprites'],
        );
        _result = loadedPokemons;
      }
      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }
}
