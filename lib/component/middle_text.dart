import 'package:flutter/material.dart';
import 'package:gals_app/util/color.dart';

class MiddleText extends StatelessWidget {
  const MiddleText({
    Key? key,
    required this.text,
    Color? textColor,
    this.maxLine,
    this.textOverflow = TextOverflow.ellipsis,
    this.fontSize = 16,
    this.textAlign,
  })  : _textColor = textColor ?? const Color(0xFFFFFFFF),
        super(key: key);

  final String text;
  final Color? _textColor;
  final int? maxLine;
  final TextAlign? textAlign;
  final double? fontSize;
  final TextOverflow textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: _textColor,
        overflow: textOverflow,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
