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
            children: <Widget>[
              GestureDetector(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search),
                    TextField(
                      controller: _searchController,
                      onChanged: onSearch,
                    ),
                  ],
                ),
                onTap: () {
                  print('tapped');
                },
              ),
              IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {},
              )
            ],
          )),
    );
  }
}
