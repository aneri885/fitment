import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage('https://firebasestorage.googleapis.com/v0/b/fitment-mrcgrhrdt.appspot.com/o/008_square.png?alt=media&token=52fff2bb-e00b-4165-996e-bff2f602d14a'),
            radius: 100.0,
          ),
          Column(
            children: <Widget>[
              Text('name', style: TextStyle(fontFamily: 'QS-R', color: Color(0xFF3C3C3C), fontSize: 16.0),),
          Text('Maurice Gerhardt', style: TextStyle(fontFamily: 'QS-M', color: Color(0xFF3C3C3C), fontSize: 18.0),),
            ],
          ),
          Column(
            children: <Widget>[
              Text('mail', style: TextStyle(fontFamily: 'QS-R', color: Color(0xFF3C3C3C), fontSize: 16.0),),
              Text('maurice.gerhardt@code.berlin', style: TextStyle(fontFamily: 'QS-M', color: Color(0xFF3C3C3C), fontSize: 18.0),),
            ],
          ),
          RaisedButton.icon(
            label: Text('logout', style: TextStyle(fontFamily: 'QS-M', color: Colors.white, fontSize: 16.0)),
            color: Color(0xFFDA4036),
            icon: Icon(EvaIcons.logInOutline, color: Colors.white,),
            onPressed: () {
              print('Logout');
            }
          ),
          Container(
            width: double.infinity,
          ),
        ],
      )
    );
  }
}
