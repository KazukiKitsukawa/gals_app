import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LargeText extends StatelessWidget {
  const LargeText({
    Key? key,
    required this.text,
    Color? textColor,
    this.maxLine,
    this.textOverflow = TextOverflow.ellipsis,
    this.fontSize = 24,
    this.textAlign,
    this.spacingHeight,
    this.isGoogleFont = false,
  })  : _textColor = textColor ?? const Color(0xFFFFFFFF),
        super(key: key);

  final String text;
  final Color? _textColor;
  final int? maxLine;
  final TextAlign? textAlign;
  final double? fontSize;
  final TextOverflow textOverflow;
  final double? spacingHeight;
  final bool isGoogleFont;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: isGoogleFont
          ? GoogleFonts.lemon(
              color: _textColor,
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
              height: spacingHeight,
              textStyle: TextStyle(
                overflow: textOverflow,
              ),
            )
          : TextStyle(
              color: _textColor,
              overflow: textOverflow,
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
              height: spacingHeight),
    );
  }
}
