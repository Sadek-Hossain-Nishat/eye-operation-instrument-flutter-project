import 'package:flutter/material.dart';

class Managevisit extends StatefulWidget {
  const Managevisit({Key? key}) : super(key: key);

  @override
  State<Managevisit> createState() => _ManagevisitState();
}

class _ManagevisitState extends State<Managevisit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Manage visit'),
      ),
    );
  }
}
