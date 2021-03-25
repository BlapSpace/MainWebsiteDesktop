import 'package:blap_main_website_desktop/components/backgroundContainerComponent.dart';
import 'package:flutter/material.dart';

class FriendsBuilder extends StatefulWidget {
  @override
  _FriendsBuilderState createState() => _FriendsBuilderState();
}

class _FriendsBuilderState extends State<FriendsBuilder> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 900,
          width: 300,
          child: BackgroundContainerComponent(
            Color(0xFFFFFFFF),
            BoxShadow(
              color: Color(0xFFF1F8F5),
              blurRadius: 60,
              spreadRadius: 0,
              offset: Offset(-25, 4),
            ),
          ),
        ),
      ],
    );
  }
}
