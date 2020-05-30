import 'package:flutter/material.dart';

import 'Screen/albums.dart';
import 'Screen/artists.dart';
import 'Screen/musics.dart';
import 'Screen/playlists.dart';
import 'Screen/starred.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Spyro",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme:
          ThemeData(primaryColor: Colors.white,),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: Logo(),
          title: Text("Spyro",style:TextStyle(color: Colors.blue)),
          bottom: tabBar,
        ),
        body: 
        TabBarView(
          children: <Widget>[
            MusicScreen(),
            AlbumsScreen(),
            PlaylistsScreen(),
            ArtistsScreen(),
            StarredScreen()
          ],
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Image.asset("asset/profile.png"),
      ),
    );
  }
}

TabBar tabBar = TabBar(
  labelColor: Colors.blue,
  tabs: <Widget>[
    Tab(
      text: "Music",
    ),
    Tab(
      text: "Albums",
    ),
    Tab(
      text: "Playlists",
    ),
    Tab(
      text: "Artists",
    ),
    Tab(
      text: "Starred",
    ),
  ],
);


