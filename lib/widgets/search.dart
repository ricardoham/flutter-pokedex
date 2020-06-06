import 'package:flutter/material.dart';

class Search extends StatelessWidget {
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
                    Text('Search'),
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
