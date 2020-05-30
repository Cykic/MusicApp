import 'package:flutter/material.dart';

import 'musics.dart';

class StarredScreen extends StatefulWidget {
  @override
  _StarredScreenState createState() => _StarredScreenState();
}

class _StarredScreenState extends State<StarredScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16,vertical: 16),
      child: Container(
          child: Column(
        children: <Widget>
        [ searchBar,Text("Starred")],
      )),
    );
  }
}