import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.blue,
          pinned: true,
          expandedHeight: 100,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Instagram'),
          ),
        )
      ],
    );
  }
}
