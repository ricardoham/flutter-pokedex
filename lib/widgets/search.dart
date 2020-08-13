import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  final Function onSearch;

  Search(this.onSearch);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final _searchController = TextEditingController();

  void handleOnSearch() {}

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.search),
            Container(
              width: 200,
              child: TextField(
                controller: _searchController,
                onChanged: (text) {
                  widget.onSearch(text);
                },
              ),
            ),
            IconButton(
              icon: Icon(Icons.clear),
              onPressed: () => _searchController.clear(),
            )
          ],
        ),
      ),
    );
  }
}
