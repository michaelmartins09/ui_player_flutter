import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
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
                height: size.width * 0.8,
                width: size.width * 0.8,
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
            ],
          ),
        ),
      ),
    );
  }
}
