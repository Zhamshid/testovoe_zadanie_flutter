import 'package:flutter/material.dart';
import 'package:test_task_flutter/screens/bottom_navbar.dart';
import 'package:test_task_flutter/screens/login_screen.dart';

void main() => runApp(
  const MyApp()
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id : (context) => const LoginScreen(),
        BottomNavBar.id : (context) => const BottomNavBar(),

      },
    );
  }
}



