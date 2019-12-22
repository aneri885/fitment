import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      ),
    );
  }
}
