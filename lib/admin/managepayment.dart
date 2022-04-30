import 'package:flutter/material.dart';

class Managepayment extends StatefulWidget {
  const Managepayment({Key? key}) : super(key: key);

  @override
  State<Managepayment> createState() => _ManagepaymentState();
}

class _ManagepaymentState extends State<Managepayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Manage payment'),
      ),
    );
    ;
  }
}
