import 'package:flutter/material.dart';

class Style extends ThemeExtension<Style> {
  Style._({
    required this.fonts,
    required this.colors,
  });

  Style.light({
    this.colors = const Palette.light(),
  }) {
    fonts = Fonts(
      onPrimary: colors.onPrimary,
      onPrimaryContract: colors.onPrimaryContract,
      onPrimaryContracten: colors.onPrimaryContracten,
    );
  }

  late final Fonts fonts;

  final Palette colors;

  @override
  ThemeExtension<Style> copyWith({Fonts? fonts, Palette? palette}) {
    return Style._(
      fonts: fonts ?? this.fonts,
      colors: palette ?? this.colors,
    );
  }

  @override
  ThemeExtension<Style> lerp(ThemeExtension<Style>? other, double t) {
    if (other is! Style) {
      return this;
    }

    return Style._(
      fonts: fonts.lerp(other.fonts, t),
      colors: colors.lerp(other.colors, t),
    );
  }
}

class Fonts {
  Fonts({
    required Color onPrimary,
    required Color onPrimaryContract,
    required Color onPrimaryContracten,
  })  : _onPrimary = onPrimary,
        _onPrimaryContract = onPrimaryContract,
        _onPrimaryContracten = onPrimaryContracten;

  final Color _onPrimary;

  final Color _onPrimaryContract;

  final Color _onPrimaryContracten;

  final TextStyle headlineSBold = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  final TextStyle text = const TextStyle(fontFamily: 'Roboto');

  final TextStyle textSBold = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  late final TextStyle textXsRegular = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  final TextStyle textXsBold = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  final TextStyle textXsSemiBold = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  final TextStyle textXxsMedium = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );

  late final TextStyle headlineSBoldContracten = headlineSBold.copyWith(
    color: _onPrimaryContracten,
  );

  late final TextStyle textOnPrimary = text.copyWith(
    color: _onPrimary,
  );

  late final TextStyle textSBoldContract = textSBold.copyWith(
    color: _onPrimaryContract,
  );

  late final TextStyle textXsRegularOnPrimary = textXsRegular.copyWith(
    color: _onPrimary,
  );

  late final TextStyle textXsBoldContract = textXsBold.copyWith(
    color: _onPrimaryContract,
  );

  late final TextStyle textXxsMediumOnPrimary = textXxsMedium.copyWith(
    color: _onPrimary,
  );

  Fonts lerp(Fonts? other, double t) {
    if (other is! Fonts) {
      return this;
    }

    return Fonts(
      onPrimary:
          Color.lerp(_onPrimary, other._onPrimary, t)!,
      onPrimaryContract:
          Color.lerp(_onPrimaryContract, other._onPrimaryContract, t)!,
      onPrimaryContracten:
          Color.lerp(_onPrimaryContracten, other._onPrimaryContracten, t)!,
    );
  }
}

class Palette {
  const Palette._({
    required this.primaryBackground,
    required this.secondaryBackground,
    required this.onPrimary,
    required this.onPrimaryContract,
    required this.onPrimaryContracten,
    required this.textFieldBackground,
  });

  const Palette.light({
    this.primaryBackground = const Color(0xFFF3F3F4),
    this.secondaryBackground = const Color(0xFFFDFDFE),
    this.onPrimary = const Color(0xFF647067),
    this.onPrimaryContract = const Color(0xFF2F3C33),
    this.onPrimaryContracten = const Color(0xFF111A14),
    this.textFieldBackground = const Color(0xFFF5F5F5),
  });

  final Color primaryBackground;

  final Color secondaryBackground;

  final Color onPrimary;

  final Color onPrimaryContract;

  final Color onPrimaryContracten;

  final Color textFieldBackground;

  Palette lerp(Palette? other, double t) {
    if (other is! Palette) {
      return this;
    }

    return Palette._(
      primaryBackground:
          Color.lerp(primaryBackground, other.primaryBackground, t)!,
      secondaryBackground:
          Color.lerp(secondaryBackground, other.secondaryBackground, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      onPrimaryContract:
          Color.lerp(onPrimaryContract, other.onPrimaryContract, t)!,
      onPrimaryContracten:
          Color.lerp(onPrimaryContracten, other.onPrimaryContracten, t)!,
      textFieldBackground:
          Color.lerp(textFieldBackground, other.textFieldBackground, t)!,
    );
  }
}
