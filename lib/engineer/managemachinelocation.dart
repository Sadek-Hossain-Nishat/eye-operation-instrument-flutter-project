import 'package:flutter/material.dart';

class Managemachinelocation extends StatefulWidget {
  const Managemachinelocation({Key? key}) : super(key: key);

  @override
  State<Managemachinelocation> createState() => _ManagemachinelocationState();
}

class _ManagemachinelocationState extends State<Managemachinelocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Manage machine location'),
      ),
    );
  }
}
