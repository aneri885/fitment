import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class Closet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(EvaIcons.plusOutline),
        backgroundColor: Color(0xFF6B34FB),
        onPressed: () {
              print('Add clothes');
            },
        ),
      );
  }
}
