import 'package:eyeoperationflutterproject/authfiles/signin.dart';
import 'package:eyeoperationflutterproject/engineer/engineerpanel.dart';
import 'package:eyeoperationflutterproject/mainpageforthisapp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bool authenticate = true;
    return MaterialApp(debugShowCheckedModeBanner: false, home: Enginner()
        // authenticate ? Mainpageforthisapp() : SignInEyeOperationApp(),
        );
  }
}
