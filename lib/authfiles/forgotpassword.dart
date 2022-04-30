import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 90),
                child: Icon(
                  Icons.lock,
                  color: Colors.blue,
                  size: 120,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'FORGOT',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue),
              ),
              Text('PASSWORD',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue)),
              Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Text('We just need your registered Email id to send your'),
                    Text(
                      'password reset instruction',
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          // borderSide: BorderSide.none
                        ),
                        // filled: true,
                        // fillColor: Color(0xFFe7edeb),
                        hintText: 'E-mail',
                        hintStyle: TextStyle(color: Colors.blue),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.blue,
                        ))),
              ),
              Container(
                  width: double.infinity,
                  height: 90,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                      onPressed: () {},
                      child: Text('RESET PASSWORD',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  )),
              SizedBox(
                height: 90,
              ),
              Container(
                  width: double.infinity,
                  height: 90,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Back',
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        )),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
