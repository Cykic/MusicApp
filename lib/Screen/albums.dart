import 'package:flutter/material.dart';

import 'musics.dart';

class AlbumsScreen extends StatefulWidget {
  @override
  _AlbumsScreenState createState() => _AlbumsScreenState();
}

class _AlbumsScreenState extends State<AlbumsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Container(
            child: Column(
          children: <Widget>[
            searchBar,
            Text("Albums"),
            Wrap(
              children: <Widget>[
                AlbumCard("asset/profile.png"),
                AlbumCard("asset/profile.png"),
                AlbumCard("asset/profile.png"),
                AlbumCard("asset/profile.png"),
                AlbumCard("asset/profile.png"),
                AlbumCard("asset/profile.png"),
                AlbumCard("asset/profile.png"),
                AlbumCard("asset/profile.png"),
                AlbumCard("asset/profile.png"),
                AlbumCard("asset/profile.png"),
                AlbumCard("asset/profile.png"),
                AlbumCard("asset/profile.png"),
                AlbumCard("asset/profile.png"),
                AlbumCard("asset/profile.png"),
                AlbumCard("asset/profile.png"),
                AlbumCard("asset/profile.png"),
                
              ],
            ),
          ],
        )),
      ),
    );
  }
}

class AlbumCard extends StatefulWidget {
  final String imagepath;
  AlbumCard(this.imagepath);

  @override
  _AlbumCardState createState() => _AlbumCardState();
}

class _AlbumCardState extends State<AlbumCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 165,
      width: 165,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [Colors.blueAccent, Colors.blue])),
      child: Image.asset(
        widget.imagepath,
        fit: BoxFit.fill,
      ),
    );
  }
}
