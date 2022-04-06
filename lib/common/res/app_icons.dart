import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_task_flutter/common/res/app_colors.dart';

double iconSize = 24.0;

class AppIcons {
  //Home icon active/inactive
  static SvgPicture homeIcon = SvgPicture.asset(
    'images/svg/home.svg',
  );
  static SvgPicture homeIconActive = SvgPicture.asset(
    'images/svg/home.svg',
    color: AppColors.plainOcean,
  );
  //Home icon active/inactive

  //Shop icon active/inactive
  static SvgPicture shopIcon = SvgPicture.asset(
    'images/svg/shopping-bag.svg',
  );
  static SvgPicture shopIconActive = SvgPicture.asset(
    'images/svg/shopping-bag.svg',
    color: AppColors.plainOcean,
  );
  //Shop icon active/inactive

  //profile icon active/inactive
  static SvgPicture profileIcon = SvgPicture.asset(
    'images/svg/user.svg',
  );
  static SvgPicture profileIconActive = SvgPicture.asset(
    'images/svg/user.svg',
    color: AppColors.plainOcean,
  );
  //profile icon active/inactive
}
