import 'package:flutter/material.dart';

class Machinerequest extends StatefulWidget {
  const Machinerequest({Key? key}) : super(key: key);

  @override
  State<Machinerequest> createState() => _MachinerequestState();
}

class _MachinerequestState extends State<Machinerequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Machine Request'),
      ),
    );
  }
}
