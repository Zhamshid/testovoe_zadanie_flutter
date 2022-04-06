import 'package:flutter/material.dart';
import 'package:test_task_flutter/common/res/app_colors.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title:  const Text(
          'Бакалея',
        ),
        backgroundColor: AppColors.plainOcean,
      ),
      body: Container(
        color: const Color(0xFFFAFAFA),
        child: const Center(
          child: Text('Shop Screen'),
        ),
      ),
    );
  }
}
