import 'dart:math';
import 'package:flutter/material.dart';
import 'package:huro/screens/home/sub_screens/user.dart';
import 'package:huro/const/icons.dart';
import 'package:huro/screens/post/post_screen.dart';
import 'package:huro/screens/group/group_screen.dart';
import 'package:huro/screens/home/home_screen.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';


class BottomBarScreen extends StatefulWidget {
  static const routeName = '/BottomBarScreen';
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  late List<Map<String, dynamic>> _pages;
  int _selectedIndex = 0;

  @override
  void initState() {
    _pages=
    [
      {'page': HomeScreen()},
      {'page': FeedScreen()},
      {'page': GroupScreen()},
      //{'page': LoungeScreen()},
      {'page': UserScreen()},
    ];
    super.initState();
  }
  void _selectedPage (int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
    Widget build(BuildContext context){
    return Scaffold(
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        /*notchMargin: 3,
        clipBehavior: Clip.hardEdge, //Clip.antiAlias
        //elevation: 5,
        shape: CircularNotchedRectangle(),*/
        child: Container(
          //height: kBottomNavigationBarHeight,
          //decoration: BoxDecoration(border: Border(top: BorderSide(width:0.5))),
        child: BottomNavigationBar(
          onTap: _selectedPage,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Theme.of(context).textSelectionColor,
          selectedItemColor: Colors.purpleAccent,
          currentIndex: _selectedIndex,
          selectedLabelStyle: TextStyle(fontSize: 11),
          items:[
            BottomNavigationBarItem(icon: Icon(MyappIcons.home), tooltip: "홈" , label:'홈'),
            BottomNavigationBarItem(icon: Icon(MyappIcons.feed), tooltip: '포스트', label: '포스트'),
            BottomNavigationBarItem(icon: Icon(MyappIcons.group), tooltip: '나의 스터디', label: '나의 스터디'),
            //BottomNavigationBarItem(activeIcon: null, icon: Icon(null),tooltip: '홈', label: ''),
                //Icons.search,color: tooltip: 'Search', label: 'Search'),
            //BottomNavigationBarItem(icon: Icon(MyappIcons.lounge), tooltip: '라운지', label: '라운지'),
            BottomNavigationBarItem(icon: Icon(MyappIcons.profile), tooltip: '정보', label: '정보'),
          ],
        )
      )
    ),
      /*floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(6.0),
        //child: FloatingActionButton(backgroundColor: Colors.purple, tooltip: "Search", elevation: 5, child: (Icon(Icons.search)),
        child: FloatingActionButton(
          backgroundColor: Colors.purple,
          hoverElevation: 10,
          splashColor: Colors.grey,
          tooltip: "홈",
          elevation: 4,
          child: Icon(MyappIcons.home),
        onPressed:() { setState(() {_selectedIndex = 2;}); },
        ),
      ),*/
    );
  }
}
