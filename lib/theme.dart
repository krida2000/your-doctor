import 'package:flutter/material.dart';

class Style extends ThemeExtension<Style> {
  Style._({
    required this.fonts,
    required this.palette,
  });

  Style.light({
    this.palette = const Palette.light(),
  }) {
    fonts = Fonts(
      onPrimary: palette.onPrimary,
      onPrimaryContract: palette.onPrimaryContract,
      onPrimaryContracten: palette.onPrimaryContracten,
    );
  }

  late final Fonts fonts;

  final Palette palette;

  @override
  ThemeExtension<Style> copyWith({Fonts? fonts, Palette? palette}) {
    return Style._(
      fonts: fonts ?? this.fonts,
      palette: palette ?? this.palette,
    );
  }

  @override
  ThemeExtension<Style> lerp(ThemeExtension<Style>? other, double t) {
    if (other is! Style) {
      return this;
    }

    return Style._(
      fonts: fonts.lerp(other.fonts, t),
      palette: palette.lerp(other.palette, t),
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
  });

  const Palette.light({
    this.primaryBackground = const Color(0xFFF3F3F4),
    this.secondaryBackground = const Color(0xFFFDFDFE),
    this.onPrimary = const Color(0xFF647067),
    this.onPrimaryContract = const Color(0xFF2F3C33),
    this.onPrimaryContracten = const Color(0xFF111A14),
  });

  final Color primaryBackground;

  final Color secondaryBackground;

  final Color onPrimary;

  final Color onPrimaryContract;

  final Color onPrimaryContracten;

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
    );
  }
}
