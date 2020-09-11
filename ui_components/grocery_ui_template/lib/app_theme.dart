import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0XFF673AB7);
  static const Color appWhiteColor = Colors.white;
  static const Color appGreyBackgroundColor = Color(0XFFF5F5F5);
  static const Color appTitleColor = Color(0XDD000000);
  static const Color appTitlePrefixColor = Color(0XFF9E9E9E);

  static const String fontName = 'AvenirNext';

  static const TextStyle appBarTitleStyle = TextStyle(
    color: appTitleColor,
    fontSize: 22.0,
    height: 1.2,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.27,
  );

  static const TextStyle appBarTitlePrefixStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    height: 1.2,
    color: appTitlePrefixColor,
  );

  static const TextStyle cardItemTitleStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.27,
    height: 1.2,
    color: appTitleColor,
  );
  static const TextStyle cardItemPriceStyle = TextStyle(
    color: primaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.27,
  );

  static const TextStyle cardItemQuantityStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    height: 1.2,
    color: appTitlePrefixColor,
  );

  static const TextStyle cardItemRatingStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    height: 1.2,
    color: appTitlePrefixColor,
  );

  static const TextStyle sectionHeaderTitleStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.21,
    color: appTitleColor,
  );

  static const TextStyle searchBarTitleStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: 0.2,
    height: 1.2,
    color: appTitlePrefixColor,
  );
}
