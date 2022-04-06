import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task_flutter/common/res/app_colors.dart';


class AppConstants {
  static const String robotoFont = 'RobotoRegular';

  static const TextStyle kUnderLogoStyle = TextStyle(
    fontFamily: robotoFont,
    fontSize: 18,
    fontWeight: FontWeight.w900,
    color: Color(0xFF232323),
  );

  static const kAuthTextStyle = TextStyle(
    fontFamily: robotoFont,
    fontSize: 16,
    fontWeight: FontWeight.w900,
    color: Color(0xFF363636),
  );

  static const kTextFieldStyle = TextStyle(
    fontFamily: robotoFont,
    fontSize: 14,
    color: Color(0xFFABABAB),
    fontWeight: FontWeight.w400,
  );

  static const kButtonTextStyle = TextStyle(
    color: AppColors.defaultWhite,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    fontFamily: robotoFont,
    letterSpacing: 1,
  );

  static const kCatalogTextStyle = TextStyle(
    color: Color(0xFF1F1F1F),
    fontFamily: robotoFont,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.6,
  );

  static const kCatalogNameStyle = TextStyle(
    color: Color(0xFF212121),
    fontFamily: robotoFont,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
  );
}