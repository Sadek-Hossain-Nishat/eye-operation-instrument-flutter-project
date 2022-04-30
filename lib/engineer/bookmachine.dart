import 'package:flutter/material.dart';

class Bookmachine extends StatefulWidget {
  const Bookmachine({Key? key}) : super(key: key);

  @override
  State<Bookmachine> createState() => _BookmachineState();
}

class _BookmachineState extends State<Bookmachine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Book machine'),
      ),
    );
  }
}
