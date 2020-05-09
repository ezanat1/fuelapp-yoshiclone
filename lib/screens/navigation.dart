import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoshiclone/screens/alerts_screen.dart';
import 'package:yoshiclone/screens/home_page.dart';
import 'package:yoshiclone/screens/profile_screen.dart';
import 'package:yoshiclone/screens/services_screen.dart';
import 'package:yoshiclone/screens/share_screen.dart';

class Navigation extends StatefulWidget {
  Navigation({Key key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _navIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    ServicesScreen(),
    ShareScreen(),
    AlertsScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_navIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black26,
          showUnselectedLabels: true,
          fixedColor: Color.fromRGBO(53, 86, 153, 1),
          onTap: (int value) {
            setState(() {
              _navIndex = value;
            });
          },
          currentIndex: _navIndex,
          iconSize: 20,
          items: [
            BottomNavigationBarItem(
              title: Text(
                'Home',
                style: TextStyle(color: Colors.black26),
              ),
              icon: Icon(
                FontAwesomeIcons.leaf,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                'Services',
                style: TextStyle(color: Colors.black26),
              ),
              icon: Icon(FontAwesomeIcons.tools),
            ),
            BottomNavigationBarItem(
              title: Text('Share', style: TextStyle(color: Colors.black26)),
              icon: Icon(FontAwesomeIcons.gift),
            ),
            BottomNavigationBarItem(
              title: Text('Alerts', style: TextStyle(color: Colors.black26)),
              icon: Icon(FontAwesomeIcons.solidBell),
            ),
            BottomNavigationBarItem(
              title: Text('Profile', style: TextStyle(color: Colors.black26)),
              icon: Icon(FontAwesomeIcons.userAlt),
            )
          ],
        ));
  }
}
