import 'package:eyeoperationflutterproject/Screens/AdminPanel/Adminpanel.dart';
import 'package:eyeoperationflutterproject/Screens/AuthScreens/registerfile.dart';
import 'package:eyeoperationflutterproject/mainpageforthisapp.dart';
import 'package:flutter/material.dart';
import 'Screens/EngineerScreens/Engineerpanel.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bool authenticate = true;
    return MaterialApp(debugShowCheckedModeBanner: false, home: SignUpPage()
        // authenticate ? Mainpageforthisapp() : SignInEyeOperationApp(),
        );
  }
}
