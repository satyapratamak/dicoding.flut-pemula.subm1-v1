import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {

    int _selectedIndex = 0;
    List _tabScreens = [

      Container(
        child: Center(
          child: Text("Home Screen"),
        ),
      ),

      Container(
        child: Center(
          child: Text("Search Screen"),
        ),
      ),

      Container(
        child: Center(
          child: Text("Library Screen"),
        ),
      ),

      Container(
        child: Center(
          child: Text("Premium Screen"),
        ),
      ),

    ];

    void _onItemTapped(int index){
      setState(() {
        _selectedIndex = index;
      });
      print(index);
    }

    return Scaffold(
      body : _tabScreens.elementAt( _selectedIndex ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor : Color(0xff121212)),
        child: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          iconSize: 30,
          unselectedFontSize: 10,
          selectedFontSize: 10,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items : [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("HOME")
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("SEARCH")
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.library_music),
              title: Text("LIBRARY")
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_filled),
              title: Text("PREMIUM")
            ),
          ]
        ),
      ),
    );
  }
}