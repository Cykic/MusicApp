import 'package:flutter/material.dart';

class MusicScreen extends StatefulWidget {
  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Container(
            child: Column(children: <Widget>[
          searchBar,
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Options("Play all", Icons.arrow_right),
              Options("Shuffle", Icons.shuffle),
              Options("Sort", Icons.sort)
            ],
          ),
          SizedBox(height: 8),
          SongTile(),
          SongTile(),
          SongTile(),
          SongTile(),
          SongTile(),
          SongTile(),
          SongTile(),
          SongTile(),
          SongTile(),
          SongTile(),
          SongTile(),
          SongTile(),
          SongTile(),
          SongTile(),
          SongTile(),
        ])),
      ),
    );
  }
}

dynamic searchBar = SearchBar();

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 28,
        child: TextField(
          cursorColor: Colors.blue,
          style: TextStyle(fontSize: 12),
          decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.search,
                color: Colors.black,
                size: 18,
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey)),
              labelText: "Search",
              hintText: "Search"),
        ),
      ),
    );
  }
}

class Options extends StatefulWidget {
  final String text;
  final IconData icon;

  Options(this.text, this.icon);
  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 39,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.text,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 0,
              ),
              Icon(
                widget.icon,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SongTile extends StatefulWidget {
  @override
  _SongTileState createState() => _SongTileState();
}

class _SongTileState extends State<SongTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              width: 32,
              height: 32,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Song Title",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text(
                  "Artist Name",
                  style: TextStyle(color: Colors.black45, fontSize: 12),
                )
              ],
            ),
            Spacer(
              flex: 4,
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
