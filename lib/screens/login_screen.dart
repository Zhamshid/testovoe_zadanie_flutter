import 'package:flutter/material.dart';
import 'package:test_task_flutter/common/constants/app_constants.dart';
import 'package:test_task_flutter/common/constants/app_strings.dart';
import 'package:test_task_flutter/common/res/app_colors.dart';
import 'package:test_task_flutter/common/widget/rounded_button.dart';
import 'package:test_task_flutter/common/widget/rounded_textfield.dart';
import 'package:test_task_flutter/screens/bottom_navbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isVisibleButton = false;
  String? email;
  String? password;

  void updateVisibilityOfButton() {
    setState(
      () {
        email == null || password == null
            ? _isVisibleButton = false
            : _isVisibleButton = true;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    updateVisibilityOfButton();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.defaultWhite,
      body: ListView(
        primary: false,
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 72),
            child: Center(
              child: Column(
                children: <Widget>[
                  Image.asset('images/png/logo.png'),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    AppStrings.underLogo,
                    style: AppConstants.kUnderLogoStyle,
                  ),
                  const SizedBox(
                    height: 122,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        AppStrings.auth,
                        style: AppConstants.kAuthTextStyle,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      RoundedTextField(
                        onChanged: (value) {
                          setState(() {
                            email = value;
                          });
                        },
                        hintText: AppStrings.email,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      RoundedTextField(
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                        hintText: AppStrings.psw,
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Visibility(
                        visible: _isVisibleButton,
                        child: RoundedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, BottomNavBar.id);
                            },
                            color: AppColors.plainOcean),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
