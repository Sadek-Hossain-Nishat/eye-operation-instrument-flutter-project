import 'package:flutter/material.dart';

class Mainpageforthisapp extends StatefulWidget {
  const Mainpageforthisapp({Key? key}) : super(key: key);

  @override
  State<Mainpageforthisapp> createState() => _MainpageforthisappState();
}

class _MainpageforthisappState extends State<Mainpageforthisapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: []),
    );
  }
}
