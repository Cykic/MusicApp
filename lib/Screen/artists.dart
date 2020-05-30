import 'package:flutter/material.dart';

import 'musics.dart';

class ArtistsScreen extends StatefulWidget {
  @override
  _ArtistsScreenState createState() => _ArtistsScreenState();
}

class _ArtistsScreenState extends State<ArtistsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16,vertical: 16),
      child: Container(
          child: Column(
        children: <Widget>
        [ searchBar,Text("Artists")],
      )),
    );
  }
}