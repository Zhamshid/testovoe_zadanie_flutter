import 'package:flutter/material.dart';
import 'package:test_task_flutter/common/constants/app_constants.dart';
import 'package:test_task_flutter/common/constants/app_strings.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.onPressed,
    required this.color,
  }) : super(key: key);

  final void Function()? onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Center(
        child: Container(
          height: 56,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: color!),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Expanded(
                child: Center(
                  child: Text(
                    AppStrings.lgn,
                    style: AppConstants.kButtonTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
