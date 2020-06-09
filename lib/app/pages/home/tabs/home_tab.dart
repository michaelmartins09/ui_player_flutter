import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_player_flutter/app/shared/constant/strings.dart';


class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        leading: IconButton(icon: Icon(FeatherIcons.chevronDown), onPressed: (){}),
        title: Text("Now Playing", style: TextStyle(
          color: Colors.blueGrey[900],
          fontWeight: FontWeight.bold,
          fontSize: 22
        )),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.queue_music), onPressed: (){})
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  width: size.width * 0.60,
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
              ),
              SizedBox(height: 40),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(icon: Icon(FeatherIcons.heart, color: Colors.grey), onPressed: (){}),
                      Text("Unsayable", style: TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold
                      )),
                      IconButton(icon: Icon(FeatherIcons.moreHorizontal, color: Colors.grey,), onPressed: (){})
                    ],
                  ),
                  Text("Brambles", style: TextStyle(
                    color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold
                  )),
                ],
              ),
              SizedBox(height: 40),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 2,
                      child: LinearProgressIndicator(
                        value: 0,
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("1:04", style: TextStyle(
                          fontWeight: FontWeight.bold
                        )),
                        Text("2:52", style: TextStyle(
                          color: Colors.grey
                        )),
                      ]
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.shuffle, color: Colors.grey), onPressed: (){}),
                        IconButton(icon: Icon(FontAwesomeIcons.stepBackward, color: Theme.of(context).primaryColor), onPressed: (){}),
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).primaryColor.withOpacity(0.2),
                                blurRadius: 15,
                                offset: Offset(0, 15)
                              )
                            ]
                          ),
                          child: IconButton(
                            icon: Icon(FontAwesomeIcons.play), 
                            color: Colors.white,
                            onPressed: (){}
                          ),
                        ),
                        IconButton(icon: Icon(FontAwesomeIcons.stepForward, color: Theme.of(context).primaryColor), onPressed: (){}),
                        IconButton(icon: Icon(Icons.repeat, color: Colors.grey), onPressed: (){}),
                      ]
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
