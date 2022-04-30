import 'package:eyeoperationflutterproject/admin/adminpanel.dart';
import 'package:eyeoperationflutterproject/authfiles/forgotpassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignInEyeOperationApp extends StatefulWidget {
  const SignInEyeOperationApp({Key? key}) : super(key: key);

  @override
  State<SignInEyeOperationApp> createState() => _SignInEyeOperationAppState();
}

class _SignInEyeOperationAppState extends State<SignInEyeOperationApp> {
  var _passwordvisibility = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue[600]!, Colors.blue[400]!],
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 36, horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 46,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Get a better service to be happy',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Form(
                      child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Color(0xFFe7edeb),
                                    hintText: 'E-mail',
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  obscureText:
                                      _passwordvisibility ? false : true,
                                  obscuringCharacter: '*',
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide.none),
                                      filled: true,
                                      fillColor: Color(0xFFe7edeb),
                                      hintText: 'Password',
                                      prefixIcon: Icon(
                                        Icons.key,
                                        color: Colors.grey[600],
                                      ),
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _passwordvisibility =
                                                  !_passwordvisibility;
                                            });
                                          },
                                          icon: _passwordvisibility
                                              ? Icon(Icons.visibility)
                                              : Icon(Icons.visibility_off))),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ForgetPassword()));
                                  },
                                  child: Text(
                                    'Forgot your password',
                                    style: TextStyle(
                                        color: Colors.blue[800],
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Container(
                                    width: double.infinity,
                                    height: 90,
                                    child: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)))),
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Adminpanel()));
                                        },
                                        child: Text('Sign In',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                            )),
                                      ),
                                    )),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Do not have account?Create Account',
                                    style: TextStyle(
                                        color: Colors.blue[800],
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ],
                            ),
                          ))),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
