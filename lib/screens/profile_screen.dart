import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task_flutter/common/constants/app_constants.dart';
import 'package:test_task_flutter/common/constants/app_strings.dart';
import 'package:test_task_flutter/common/res/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 84),
          color: const Color(0xFFFAFAFA),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: const <Widget>[
                  CircleAvatar(
                    backgroundColor: AppColors.defaultWhite,
                    minRadius: 50,
                    backgroundImage: AssetImage('images/png/profile_phooto.png'),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Артемий \nЛевушкин',
                    style: AppConstants.kCatalogTextStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                AppStrings.historyShop,
                style: AppConstants.kCatalogTextStyle,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: AppColors.shopHistoryContainerColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Заказ №12768',
                          style: AppConstants.kCatalogNameStyle,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 63,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: const Color(0XFFD8D8D8),
                                width: 1,
                              )),
                          child: const Text(
                            '387 ₽',
                            style: AppConstants.kCatalogNameStyle,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Трюфельный пай',
                          style: AppConstants.kCatalogNameStyle
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '219₽',
                          style: AppConstants.kCatalogNameStyle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Маффин Три шоколада',
                          style: AppConstants.kCatalogNameStyle
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '79₽',
                          style: AppConstants.kCatalogNameStyle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Lay’s Бекон',
                          style: AppConstants.kCatalogNameStyle
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '89₽',
                          style: AppConstants.kCatalogNameStyle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: AppColors.shopHistoryContainerColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Заказ №12768',
                          style: AppConstants.kCatalogNameStyle,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 63,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: const Color(0XFFD8D8D8),
                                width: 1,
                              )),
                          child: const Text(
                            '387 ₽',
                            style: AppConstants.kCatalogNameStyle,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Трюфельный пай',
                          style: AppConstants.kCatalogNameStyle
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '219₽',
                          style: AppConstants.kCatalogNameStyle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Маффин Три шоколада',
                          style: AppConstants.kCatalogNameStyle
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '79₽',
                          style: AppConstants.kCatalogNameStyle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Lay’s Бекон',
                          style: AppConstants.kCatalogNameStyle
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '89₽',
                          style: AppConstants.kCatalogNameStyle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: AppColors.shopHistoryContainerColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Заказ №12768',
                          style: AppConstants.kCatalogNameStyle,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 63,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: const Color(0XFFD8D8D8),
                                width: 1,
                              )),
                          child: const Text(
                            '387 ₽',
                            style: AppConstants.kCatalogNameStyle,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Трюфельный пай',
                          style: AppConstants.kCatalogNameStyle
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '219₽',
                          style: AppConstants.kCatalogNameStyle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Маффин Три шоколада',
                          style: AppConstants.kCatalogNameStyle
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '79₽',
                          style: AppConstants.kCatalogNameStyle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Lay’s Бекон',
                          style: AppConstants.kCatalogNameStyle
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '89₽',
                          style: AppConstants.kCatalogNameStyle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: AppColors.shopHistoryContainerColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Заказ №12768',
                          style: AppConstants.kCatalogNameStyle,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 63,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: const Color(0XFFD8D8D8),
                                width: 1,
                              )),
                          child: const Text(
                            '387 ₽',
                            style: AppConstants.kCatalogNameStyle,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Трюфельный пай',
                          style: AppConstants.kCatalogNameStyle
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '219₽',
                          style: AppConstants.kCatalogNameStyle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Маффин Три шоколада',
                          style: AppConstants.kCatalogNameStyle
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '79₽',
                          style: AppConstants.kCatalogNameStyle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Lay’s Бекон',
                          style: AppConstants.kCatalogNameStyle
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '89₽',
                          style: AppConstants.kCatalogNameStyle.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
