import 'package:flutter/material.dart';
import 'package:flutter_sandbox/src/presentation/core/styles/app_colors.dart';

typedef AT = AppTypography;

class AppTypography {
  /// font families
  static const boldFontFamily = 'VictorMono-Bold';
  static const semiBoldFontFamily = 'VictorMono-SemiBold';
  static const mediumFontFamily = 'VictorMono-Medium';
  static const regularFontFamily = 'VictorMono-Regular';

  /// headers
  static const TextStyle h1 = TextStyle(
    fontFamily: boldFontFamily,
    fontSize: 36,
    color: AdditionalColors.black,
  );
  static const TextStyle h2 = TextStyle(
    fontFamily: boldFontFamily,
    fontSize: 24,
    color: AdditionalColors.black,
  );
  static const TextStyle h3 = TextStyle(
    fontFamily: semiBoldFontFamily,
    fontSize: 18,
    color: AdditionalColors.black,
  );
  static const TextStyle h4 = TextStyle(
    fontFamily: semiBoldFontFamily,
    fontSize: 16,
    color: AdditionalColors.black,
  );
  static const TextStyle h5 = TextStyle(
    fontFamily: semiBoldFontFamily,
    fontSize: 14,
    color: AdditionalColors.black,
  );

  /// buttons
  static const TextStyle button = TextStyle(
    fontFamily: mediumFontFamily,
    fontSize: 16,
    color: AdditionalColors.black,
  );

  /// bodies
  static const TextStyle body1 = TextStyle(
    fontFamily: regularFontFamily,
    fontSize: 18,
    color: AdditionalColors.black,
  );
  static const TextStyle body2 = TextStyle(
    fontFamily: regularFontFamily,
    fontSize: 16,
    color: AdditionalColors.black,
  );
  static const TextStyle body3 = TextStyle(
    fontFamily: regularFontFamily,
    fontSize: 14,
    color: AdditionalColors.black,
  );
  static const TextStyle body4 = TextStyle(
    fontFamily: regularFontFamily,
    fontSize: 12,
    color: AdditionalColors.black,
  );

  ///captions
  static const TextStyle caption = TextStyle(
    fontFamily: regularFontFamily,
    fontSize: 11,
    color: AdditionalColors.black,
  );
}
