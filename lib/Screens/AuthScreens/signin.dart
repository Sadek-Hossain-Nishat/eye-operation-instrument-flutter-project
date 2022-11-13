import 'package:eyeoperationflutterproject/Themes/MyColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../AdminPanel/Adminpanel.dart';
import '../AdminPanel/ManageStaff.dart';
import '../GlobleWidgets/myWidget.dart';

import 'Widgets/MyButton.dart';
import 'Widgets/MyTextField.dart';
import 'forgotpassword.dart';
import 'registerfile.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgrounColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Welcome!',
                  style: GoogleFonts.raleway().copyWith(
                      letterSpacing: 1.5,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: primaryColor),
                ),
                Text(
                  'Back',
                  style: GoogleFonts.raleway().copyWith(
                      letterSpacing: 1.5,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: primaryColor),
                ),
                const SizedBox(
                  height: 50,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Center(
                      child: MyCustomWidget(
                        size: size.width * .80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: Text(
                                'Sign-In',
                                style: GoogleFonts.raleway().copyWith(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: primaryColor),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const MyTextFields(
                                hintTittle: '@user',
                                iconData: Icons.supervised_user_circle),
                            const SizedBox(
                              height: 20,
                            ),
                            const MyTextFields(
                              hintTittle: 'password',
                              iconData: Icons.lock,
                              isObscure: true,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            pageBuilder: ((context, animation,
                                                    secondaryAnimation) =>
                                                const VerificationPage())));
                                  },
                                  child: Text(
                                    'Forgot password?',
                                    style: GoogleFonts.raleway().copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: primaryColor),
                                  )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            MyButton(
                                title: 'SignIn',
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                          pageBuilder: ((context, animation,
                                                  secondaryAnimation) =>
                                              const Adminpanel())));
                                }),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                height: 1.5,
                                color: Colors.black12,
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Dont have an account? ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption!
                                            .copyWith(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            PageRouteBuilder(
                                                pageBuilder: ((context,
                                                        animation,
                                                        secondaryAnimation) =>
                                                    const SignUpPage())));
                                      },
                                      child: Text('SignUp',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption!
                                              .copyWith(
                                                  fontSize: 14,
                                                  color: primaryColor,
                                                  fontWeight: FontWeight.w600)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -35,
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            shape: BoxShape.circle,
                            border: Border.all(width: 5, color: Colors.white)),
                        child: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
