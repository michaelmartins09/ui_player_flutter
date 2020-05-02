import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_player_flutter/app/shared/theme/strings.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        leading: IconButton(icon: Icon(FeatherIcons.chevronDown), onPressed: (){}),
        title: Text("Now Playing", style: Theme.of(context).textTheme.title,),
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
              Container(
                height: size.width * 0.75,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Theme.of(context).primaryColor.withOpacity(0.2)
                    )
                  ],
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context).primaryColor.withOpacity(0.5),
                            blurRadius: 50,
                            offset: Offset(0, 20)
                          )
                        ]
                      ),
                    ),
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
                    SizedBox(height: 40),
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
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  _buildBottomNav(){
    return Card(
      elevation: 30,
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      )),
      child: BottomNavigationBar(
        elevation: 0,
        currentIndex: 0,
        backgroundColor: Colors.transparent,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColor.withOpacity(0.3),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.search),
            title: Text("Search")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            title: Text("Library")
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.fire),
            title: Text("Hotlist")
          ),
        ],
      ),
    );
  }
}
