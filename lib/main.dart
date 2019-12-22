import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Image.asset(
            'assets/appIcons/category.png',
            height: 5.0,
            width: 5.0,
          ),
          title: Text('fitment', style: TextStyle(color: Color(0xFF3C3C3C)), textAlign: TextAlign.center,),
          backgroundColor: Color(0x88ECECEC),
        ),
      body: Center(
        child: Image(
          image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/fitment-mrcgrhrdt.appspot.com/o/category.png?alt=media&token=fc956428-f413-4f5c-b8fb-19687225de83'),
          width: 10.0,
          height: 10.0,
        ),
      ),
      ),
    ),
  );
}
