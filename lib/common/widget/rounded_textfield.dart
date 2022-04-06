import 'package:flutter/material.dart';
import 'package:test_task_flutter/common/constants/app_constants.dart';
import 'package:test_task_flutter/common/res/app_colors.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    Key? key,
    @required this.hintText, this.onChanged,
  }) : super(key: key);

  final String? hintText;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.defaultWhite,
        border: Border.all(color: AppColors.borderColor),
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextFormField(
              onChanged: onChanged,
              style: AppConstants.kTextFieldStyle,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                ),
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: AppConstants.kTextFieldStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
