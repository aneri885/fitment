import 'package:flutter/material.dart';
import 'package:fitment/tabViews/closet.dart';
import 'package:fitment/tabViews/outfits.dart';
import 'package:fitment/tabViews/profile.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MainState();
}

class MainState extends State<App> {
  int currentTabIndex = 0;
  String title = 'categories';
  Icon leadingIcon = Icon(Icons.category, color: Color(0xFF6b34fb),);

  @override
  Widget build(BuildContext context) {
    final tabPages = <Widget>[
      Closet(),
      Outfits(),
      Profile()
    ];

    final appBarTitles = <String>[
      'categories',
      'outfits',
      'profile'
    ];

    final leadingIcons = <Icon>[
      Icon(Icons.category, color: Color(0xFF6b34fb), size: 26.0,),
      Icon(EvaIcons.sun, color: Color(0xFF6b34fb), size: 26.0,),
      Icon(EvaIcons.personOutline, color: Color(0xFF6b34fb), size: 26.0,)
    ];

    final navBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.shoppingBag, color: Color(0xFF6B34FB), size: 35.0),
          icon: Icon(EvaIcons.shoppingBagOutline, color: Color(0xFF3c3c3c), size: 35.0),
          title: Text('closet', style: TextStyle(fontFamily: 'QS-M'))),
      BottomNavigationBarItem(
          activeIcon: Image(
              image: AssetImage('assets/tabBarIcons/outfits_selected.png'),
              width: 30.0,
              height: 30.0),
          icon: Image(
              image: AssetImage('assets/tabBarIcons/outfits.png'),
              width: 30.0,
              height: 30.0),
          title: Text('outfits', style: TextStyle(fontFamily: 'QS-M'))),
      BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.person, color: Color(0xFF6B34FB), size: 35.0),
          icon: Icon(EvaIcons.personOutline, color: Color(0xFF3c3c3c), size: 35.0),
          title: Text('profile', style: TextStyle(fontFamily: 'QS-M'))),
    ];


    assert(tabPages.length == navBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: navBarItems,
      currentIndex: currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          currentTabIndex = index;
          title = appBarTitles[index];
          leadingIcon = leadingIcons[index];
        });
      },
      backgroundColor: Color(0x88ECECEC),
      selectedItemColor: Color(0xFF6B34FB),
      elevation: 0.0,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: leadingIcon,
          title: Text(title, style: TextStyle(fontFamily: 'QS-M', color: Color(0xFF3C3C3C))),
          actions: <Widget>[
            IconButton(
              icon: Icon(EvaIcons.moreVerticalOutline, color: Color(0xFF6B34FB), size: 26.0,),
              onPressed: () {
                print('More');
              },
            ),
          ],
          backgroundColor: Color(0x88ECECEC),
          elevation: 0.0,
        ),
        body: tabPages[currentTabIndex],
        bottomNavigationBar: bottomNavBar,
      ),
    );
  }
}
