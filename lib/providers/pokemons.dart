import 'package:http/http.dart' as http;
import 'dart:convert';
import '../constants/constants.dart' as Constants;

class Pokemons {
  List _pokemons = [];

  Future<void> getPokemons() async {
    try {
      final response = await http.get(Constants.URL);
      print(response);
      if (response.statusCode == 200) {
        return Pokemon.fromJson(json.decode(response.body));
      }
    } catch (error) {
      throw (error);
    }
  }
}
