import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NormalFontComponent extends StatefulWidget {
  final String _text;
  final Color _color;
  final double _fontSize;
  const NormalFontComponent(this._text, this._color, this._fontSize);
  @override
  _NormalFontComponentState createState() =>
      _NormalFontComponentState(_text, _color, _fontSize);
}

class _NormalFontComponentState extends State<NormalFontComponent> {
  final String _text;
  final Color _color;
  final double _fontSize;
  _NormalFontComponentState(this._text, this._color, this._fontSize);
  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: GoogleFonts.lexendDeca(color: _color, fontSize: _fontSize),
    );
  }
}
