import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NormalFontComponent extends StatefulWidget {
  final String _text;
  final Color _color;
  final double _fontSize;
  final TextAlign textAlign;
  const NormalFontComponent(this._text, this._color, this._fontSize, {this.textAlign = TextAlign.left});
  @override
  _NormalFontComponentState createState() =>
      _NormalFontComponentState(_text, _color, _fontSize, textAlign);
}

class _NormalFontComponentState extends State<NormalFontComponent> {
  final String _text;
  final Color _color;
  final double _fontSize;
  final TextAlign _textAlign;
  _NormalFontComponentState(this._text, this._color, this._fontSize, this._textAlign);
  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: GoogleFonts.lexendDeca(color: _color, fontSize: _fontSize),
      textAlign: _textAlign,
    );
  }
}
