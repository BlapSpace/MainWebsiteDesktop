import 'package:flutter/material.dart';

import '../components/normalFontComponent.dart';

class TalkWidget extends StatefulWidget {
  @override
  _TalkWidgetState createState() => _TalkWidgetState();
}

class _TalkWidgetState extends State<TalkWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 150,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFF1F8F5),
            blurRadius: 60,
            spreadRadius: 0,
            offset: Offset(-25, 4),
          ),
        ],
      ),
      child: Center(
        child: NormalFontComponent(
          'Hier ist der Inhalt von einem Gespräch.',
          Color(0xFF181818),
          15,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
