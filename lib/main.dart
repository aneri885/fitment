import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    final tabPages = <Widget>[
      Center(
        child: Image(
          image: AssetImage('assets/tabBarIcons/closet.png'),
          width: 64.0,
          height: 64.0,
        ),
      ),
      Center(
        child: Image(
          image: AssetImage('assets/tabBarIcons/outfits.png'),
          width: 64.0,
          height: 64.0,
        ),
      ),
      Center(
        child: Image(
          image: AssetImage('assets/tabBarIcons/settings.png'),
          width: 64.0,
          height: 64.0,
        ),
      ),
    ];

    final navBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          activeIcon: Image(
              image: AssetImage('assets/tabBarIcons/closet_selected.png'),
              width: 30.0,
              height: 30.0),
          icon: Image(
              image: AssetImage('assets/tabBarIcons/closet.png'),
              width: 30.0,
              height: 30.0),
          title: Text('closet')),
      BottomNavigationBarItem(
          activeIcon: Image(
              image: AssetImage('assets/tabBarIcons/outfits_selected.png'),
              width: 30.0,
              height: 30.0),
          icon: Image(
              image: AssetImage('assets/tabBarIcons/outfits.png'),
              width: 30.0,
              height: 30.0),
          title: Text('outfits')),
      BottomNavigationBarItem(
          activeIcon: Image(
              image: AssetImage('assets/tabBarIcons/settings_selected.png'),
              width: 30.0,
              height: 30.0),
          icon: Image(
              image: AssetImage('assets/tabBarIcons/settings.png'),
              width: 30.0,
              height: 30.0),
          title: Text('settings')),
    ];

    assert(tabPages.length == navBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: navBarItems,
      currentIndex: currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          currentTabIndex = index;
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
          title: Container(
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/appIcons/category_accent.png'),
                  width: 32.0,
                  height: 32.0,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(width: 16.0),
                Text('fitment', style: TextStyle(color: Color(0xFF3C3C3C)))
              ],
            ),
          ),
          backgroundColor: Color(0x88ECECEC),
          elevation: 0.0,
        ),
        body: tabPages[currentTabIndex],
        bottomNavigationBar: bottomNavBar,
      ),
    );
  }
}
