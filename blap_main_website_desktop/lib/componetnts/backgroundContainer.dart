import 'package:flutter/material.dart';

class BackgroundContainer extends StatefulWidget {
  @override
  _BackgroundContainerState createState() => _BackgroundContainerState();
}

class _BackgroundContainerState extends State<BackgroundContainer> {
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
