import 'package:blap_main_website_desktop/components/backgroundContainerComponent.dart';
import 'package:blap_main_website_desktop/components/normalFontComponent.dart';
import 'package:flutter/material.dart';

class FriendsBuilder extends StatefulWidget {
  @override
  _FriendsBuilderState createState() => _FriendsBuilderState();
}

class _FriendsBuilderState extends State<FriendsBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 45),
            Padding(
              padding: EdgeInsets.only(left: 55),
              child: NormalFontComponent('FREUNDE', Color(0xFF181818), 25),
            ),
            SizedBox(height: 45),
            Padding(
              padding: EdgeInsets.only(left: 55),
              child: NormalFontComponent(
                  'Hier kommen dan die ganzen Freunde hin.',
                  Color(0xFF181818),
                  15),
            ),
          ],
        ),
      ),
    );
  }
}
