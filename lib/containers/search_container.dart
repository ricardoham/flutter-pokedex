import 'package:http/http.dart' as http;

class SearchContainer  {
  List pokemons = [];

  Future<void> fetchPokemons() async {
    var url = 'https://pokeapi.co/api/v2/pokemon';

    try {
      final response = await http.get(url);
      if(response.statusCode == 200) {
        return;
      }
    } catch(error) {
      throw (error)
    }
  }

}
