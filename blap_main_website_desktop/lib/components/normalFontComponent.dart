import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NormalFontComponent extends StatefulWidget {
  String _text;
  Color _color;
  double _fontSize;
  NormalFontComponent(this._text, this._color, this._fontSize);
  @override
  _NormalFontComponentState createState() =>
      _NormalFontComponentState(_text, _color, _fontSize);
}

class _NormalFontComponentState extends State<NormalFontComponent> {
  String _text;
  Color _color;
  double _fontSize;
  _NormalFontComponentState(this._text, this._color, this._fontSize);
  @override
  Widget build(BuildContext context) {
    return Text(_text,
        style: GoogleFonts.lexendDeca(color: _color, fontSize: _fontSize));
  }
}
