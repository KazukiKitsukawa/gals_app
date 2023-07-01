import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// フォントサイズ
double get size12 => 12;
double get size14 => 14;
double get size16 => 16;
double get size18 => 18;
double get size24 => 24;
double get size36 => 36;

/// テキスト間隔幅
double get spacing1 => 1.0;
double get spacing1half => 1.5;

/// overFlow
TextOverflow get clip => TextOverflow.clip;
TextOverflow get ellipsis => TextOverflow.ellipsis;

enum UseGoogleFont {
  zenKaku,
  lemon,
  none,
}

extension GoogleFontList on UseGoogleFont {
  TextStyle get style {
    switch (this) {
      case UseGoogleFont.zenKaku:
        return GoogleFonts.zenKakuGothicAntique();
      case UseGoogleFont.lemon:
        return GoogleFonts.lemon();
      case UseGoogleFont.none:
        return const TextStyle();
    }
  }
}
