import 'package:eyeoperationflutterproject/Themes/MyColors.dart';
import 'package:flutter/material.dart';

import 'OtpSignUp.dart';
import 'Widgets/MyTextField.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      backgroundColor: backgrounColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        color: cardBackgrounColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: size.width * .75,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Forgot Password?',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'We just need your register email',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  'address to send you password',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          const MyTextFields(
                            hintTittle: '@email',
                            iconData: Icons.email_rounded,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                'Reset Password',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.white),
                              )),
                            ),
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
                                              pageBuilder: ((context, animation,
                                                      secondaryAnimation) =>
                                                  const OtpSignUpPage())));
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
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
