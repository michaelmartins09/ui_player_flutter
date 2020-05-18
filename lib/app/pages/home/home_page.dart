import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_player_flutter/app/models/music_model.dart';
import 'package:ui_player_flutter/app/pages/home/tabs/home_tab.dart';
import 'package:ui_player_flutter/app/pages/home/tabs/library_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<MusicModel> listMusic = [
    MusicModel(id: "01", title: "To Speak Of Solitude", album:"Brambles", duration: "4:21"),
    MusicModel(id: "02", title: "Unsayable", album:"Brambles", duration: "2:52", isPlay: true),
    MusicModel(id: "03", title: "In The Androgynous Dark", album:"Brambles", duration: "4:43"),
    MusicModel(id: "04", title: "Sait Photographs", album:"Brambles", duration: "6:54"),
    MusicModel(id: "05", title: "Pink And Golden Billows", album:"Brambles", duration: "2:58"),
  ];

  int indexPage = 0;
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: indexPage, keepPage: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        // onPageChanged: _onChangePage,
        children: <Widget>[
          HomeTab(),
          LibraryTab()
        ],
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

  _onChangePage(index){
    _pageController.jumpToPage(index);
    setState(() {
      indexPage = index;
    });
  }
}
