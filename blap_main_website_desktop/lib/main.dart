import 'friends/friendsBuilder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Blap());
}

class Blap extends StatefulWidget {
  @override
  _BlapState createState() => _BlapState();
}

class _BlapState extends State<Blap> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Color(0xFFFFFFFF),
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 300,
              child: FriendsBuilder(),
            ),
          ),
        ),
      ),
    );
  }
}
