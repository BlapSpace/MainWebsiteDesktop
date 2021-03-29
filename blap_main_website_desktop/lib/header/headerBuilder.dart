import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderBuilder extends StatefulWidget {
  @override
  _HeaderBuilderState createState() => _HeaderBuilderState();
}

class _HeaderBuilderState extends State<HeaderBuilder> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext builderContext, BoxConstraints boxConstraints) {
      double _heightFactor = boxConstraints.maxHeight / 1024;
      double _widthFactor = boxConstraints.maxWidth / 1440;
      return Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20 * _heightFactor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 80 * _heightFactor,
                  width: 800 * _widthFactor,
                  decoration: BoxDecoration(
                    color: Color(0x38A0D2BA),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: TextField(
                    style: GoogleFonts.lexendDeca(
                        color: Color(0xFF181818), fontSize: 30 * _heightFactor),
                    cursorColor: Colors.black,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        hintStyle: GoogleFonts.lexendDeca(
                            color: Color(0x61000000), fontSize: 30 * _heightFactor),
                        contentPadding: EdgeInsets.only(left: 30 * _widthFactor, top: 20 * _heightFactor),
                        border: InputBorder.none,
                        hintText: "Suche nach Menschen, Story's,..."),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
