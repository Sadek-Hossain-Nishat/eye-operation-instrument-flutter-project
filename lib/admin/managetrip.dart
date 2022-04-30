import 'package:flutter/material.dart';

class Managetrip extends StatefulWidget {
  const Managetrip({Key? key}) : super(key: key);

  @override
  State<Managetrip> createState() => _ManagetripState();
}

class _ManagetripState extends State<Managetrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Manage trip'),
      ),
    );
  }
}
