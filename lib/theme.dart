import 'package:flutter/material.dart';

class Style extends ThemeExtension<Style> {
  const Style({this.fonts = const Fonts()});

  final Fonts fonts;

  @override
  ThemeExtension<Style> copyWith({Fonts? fonts}) {
    return Style(fonts: fonts ?? this.fonts);
  }

  @override
  ThemeExtension<Style> lerp(covariant ThemeExtension<Style>? other, double t) {
    // TODO: implement lerp.
    return Style(fonts: fonts);
  }
}

class Fonts {
  const Fonts();

  TextStyle get xsBold => const TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );

  TextStyle get xsSemiBold => const TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );

  TextStyle get xxsMedium => const TextStyle(
        fontFamily: 'Roboto',
        fontSize: 10,
        fontWeight: FontWeight.w500,
      );
}
