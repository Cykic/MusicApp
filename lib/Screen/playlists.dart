import 'package:flutter/material.dart';

import 'musics.dart';

class PlaylistsScreen extends StatefulWidget {
  @override
  _PlaylistsScreenState createState() => _PlaylistsScreenState();
}

class _PlaylistsScreenState extends State<PlaylistsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16,vertical: 16),
      child: Container(
          child: Column(
        children: <Widget>
        [ searchBar,Text("Playlist")],
      )),
    );
  }
}