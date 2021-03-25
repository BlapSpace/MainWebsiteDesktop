import 'package:flutter/material.dart';
import 'friends/friendsBuilder.dart';
import 'header/headerBuilder.dart';
import 'talks/talksBuilder.dart';

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
          child: Stack(
            children: <Widget>[
              HeaderBuilder(),
              Align(
                alignment: Alignment.bottomLeft,
                child: TalksBuilder(),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FriendsBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
