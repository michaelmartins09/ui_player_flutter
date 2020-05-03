import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_player_flutter/app/models/music_model.dart';
import 'package:ui_player_flutter/app/shared/theme/strings.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {

  List<MusicModel> listMusic = [
    MusicModel(id: "01", title: "To Speak Of Solitude", album:"Brambles", duration: "4:21"),
    MusicModel(id: "02", title: "Unsayable", album:"Brambles", duration: "2:52", isPlay: true),
    MusicModel(id: "03", title: "In The Androgynous Dark", album:"Brambles", duration: "4:43"),
    MusicModel(id: "04", title: "Sait Photographs", album:"Brambles", duration: "6:54"),
    MusicModel(id: "05", title: "Pink And Golden Billows", album:"Brambles", duration: "2:58"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        leading: IconButton(icon: Icon(FeatherIcons.chevronLeft), onPressed: (){}),
        actions: <Widget>[
          IconButton(icon: Icon(FeatherIcons.search), onPressed: (){})
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 30,
                        offset: Offset(0, 40),
                        color: Theme.of(context).primaryColor.withOpacity(0.2)
                      )
                    ],
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(imgAlbum),
                          )
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[800].withOpacity(0.5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ],
                  )
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Album - 5 songs - 2012", style: TextStyle(
                      color: Colors.grey
                    )),
                    Text("Charcoal", style: TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold
                    )),
                    Text("Brambles", style: TextStyle(
                      color: Colors.grey
                    )),
                    Row(
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.playlist_add), onPressed: (){}),
                        IconButton(icon: Icon(Icons.file_download), onPressed: (){}),
                        IconButton(icon: Icon(Icons.more_horiz), onPressed: (){}),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: ButtonTheme(
                    buttonColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    child: RaisedButton(
                      onPressed: (){},
                      textColor: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(FeatherIcons.playCircle),
                          SizedBox(width: 10),
                          Text("Play")
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: ButtonTheme(
                    buttonColor: Colors.grey[200],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    child: RaisedButton(
                      elevation: 0,
                      onPressed: (){},
                      textColor: Theme.of(context).primaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(FeatherIcons.shuffle),
                          SizedBox(width: 10),
                          Text("Shuffle")
                        ], 
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: listMusic.map((item) => Container(
                  decoration: BoxDecoration(
                    gradient: item.isPlay? LinearGradient(
                      colors: [
                        Theme.of(context).scaffoldBackgroundColor,
                        Colors.grey[200],
                        Colors.grey[200],
                        Colors.grey[200],
                        Colors.grey[200],
                        Colors.grey[200],
                        Colors.grey[200],
                        Colors.grey[200],
                        Colors.grey[200],
                        Theme.of(context).scaffoldBackgroundColor,
                        Theme.of(context).scaffoldBackgroundColor,
                        Theme.of(context).scaffoldBackgroundColor,
                        Theme.of(context).scaffoldBackgroundColor,
                        Theme.of(context).scaffoldBackgroundColor,
                        Theme.of(context).scaffoldBackgroundColor,
                        Theme.of(context).scaffoldBackgroundColor,
                        Theme.of(context).scaffoldBackgroundColor,
                        Theme.of(context).scaffoldBackgroundColor,
                        Theme.of(context).scaffoldBackgroundColor,
                        Theme.of(context).scaffoldBackgroundColor,
                        Theme.of(context).scaffoldBackgroundColor,
                        Theme.of(context).scaffoldBackgroundColor,
                      ]
                    ) : null
                  ),
                  child: ListTile(
                    leading: item.isPlay? Icon(FontAwesomeIcons.solidPauseCircle, color: Theme.of(context).primaryColor) : Text(item.id, style: TextStyle(
                      fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor
                    )),
                    title: Text(item.title, style: TextStyle(
                      fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor
                    )),
                    subtitle: Text(item.album + " - " + item.duration),
                    trailing: IconButton(icon: Icon(Icons.more_horiz, color: Colors.grey), onPressed: (){}),
                  ),
                )).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
