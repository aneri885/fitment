import 'package:flutter/material.dart';

class Outfits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image(
          image: AssetImage('assets/tabBarIcons/outfits.png'),
          width: 64.0,
          height: 64.0,
        ),
      )
    );
  }
}
