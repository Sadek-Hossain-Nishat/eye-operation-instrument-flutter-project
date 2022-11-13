import 'package:eyeoperationflutterproject/Themes/MyColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../AdminPanel/ManageMechine.dart';
import '../GlobleWidgets/myWidget.dart';

import 'Widgets/MyButton.dart';
import 'Widgets/MyTextField.dart';
import 'signin.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                  height: 30,
                ),
                Text(
                  'Welcome!',
                  style: GoogleFonts.raleway().copyWith(
                      letterSpacing: 1.5,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: primaryColor),
                ),
                const SizedBox(
                  height: 30,
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
                                'Sign-Up',
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
                              hintTittle: 'name',
                              iconData: Icons.supervised_user_circle,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const MyTextFields(
                              hintTittle: 'user name',
                              iconData: Icons.supervised_user_circle,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const MyTextFields(
                              hintTittle: '@email',
                              iconData: Icons.email_rounded,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const MyTextFields(
                              hintTittle: 'password',
                              iconData: Icons.lock,
                              isObscure: true,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const MyTextFields(
                              hintTittle: 'confirm password',
                              iconData: Icons.security_rounded,
                              isObscure: true,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            MyButton(
                              title: 'SignUp',
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                        pageBuilder: ((context, animation,
                                                secondaryAnimation) =>
                                            const MechineManagePage())));
                              },
                            ),
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
                                    Text('Already have an account? ',
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
                                                    const SignInPage())));
                                      },
                                      child: Text('SignIn',
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
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
