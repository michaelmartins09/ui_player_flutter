import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_player_flutter/app/shared/theme/strings.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
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
                    Text("Album - 6 songs - 2012", style: TextStyle(
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
            )
          ],
        ),
      ),
    );
  }
}
