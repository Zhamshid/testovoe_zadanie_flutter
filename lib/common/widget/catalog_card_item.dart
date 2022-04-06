import 'package:flutter/material.dart';
import 'package:test_task_flutter/common/constants/app_constants.dart';
import 'package:test_task_flutter/common/res/app_colors.dart';

class CatalogCardItem extends StatelessWidget {
  const CatalogCardItem({
    Key? key,
    @required this.imageAssetName,
    @required this.productName,
    @required this.productCount,
  }) : super(key: key);

  final String? imageAssetName;
  final String? productName;
  final String? productCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158,
      padding: const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        color: AppColors.catalogContainerColor,
        boxShadow: [
          BoxShadow(
            color: AppColors.catalogContainerColor,
            blurRadius: 32,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(imageAssetName!),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                productName!,
                style: AppConstants.kCatalogNameStyle,
              ),
              Text(
                productCount!,
                style: AppConstants.kCatalogNameStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
