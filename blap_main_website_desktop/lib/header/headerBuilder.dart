import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderBuilder extends StatefulWidget {
  @override
  _HeaderBuilderState createState() => _HeaderBuilderState();
}

class _HeaderBuilderState extends State<HeaderBuilder> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 80,
                width: 800,
                decoration: BoxDecoration(
                  color: Color(0x38A0D2BA),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      hintStyle: GoogleFonts.lexendDeca(
                          color: Color(0x61000000), fontSize: 30),
                      contentPadding: EdgeInsets.only(left: 30, top: 20),
                      border: InputBorder.none,
                      hintText: "Suche nach Menschen, Story's,..."),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
