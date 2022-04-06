import 'package:flutter/material.dart';
import 'package:test_task_flutter/common/constants/app_constants.dart';
import 'package:test_task_flutter/common/constants/app_strings.dart';
import 'package:test_task_flutter/common/data/catalog_data.dart';
import 'package:test_task_flutter/common/res/app_colors.dart';
import 'package:test_task_flutter/common/widget/catalog_card_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text(
          'Wish Swish',
        ),
        backgroundColor: AppColors.plainOcean,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              AppStrings.catalog,
              style: AppConstants.kCatalogTextStyle,
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: GestureDetector(
                child: GridView(
                  primary: false,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: catalog_data
                      .map(
                        (catalogItem) => CatalogCardItem(
                      imageAssetName: catalogItem.imageAssetName,
                      productName: catalogItem.productName,
                      productCount: catalogItem.productCount,
                    ),
                  ).toList(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
