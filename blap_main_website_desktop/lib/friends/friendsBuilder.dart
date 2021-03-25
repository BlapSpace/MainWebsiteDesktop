import 'package:flutter/material.dart';

class FriendsBuilder extends StatefulWidget {
  @override
  _FriendsBuilderState createState() => _FriendsBuilderState();
}

class _FriendsBuilderState extends State<FriendsBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFF1F8F5),
            blurRadius: 60,
            spreadRadius: 0,
            offset: Offset(-25, 4),
          ),
        ],
      ),
    );
  }
}
