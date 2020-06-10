import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final Function onSearch;
  final _searchController = TextEditingController();

  Search(this.onSearch);

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
                onChanged: onSearch,
              ),
            ),
            IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
