import 'package:flutter/material.dart';

import 'MyColors.dart';

class MyCustomWidget extends StatelessWidget {
  const MyCustomWidget({Key? key, this.size, required this.child})
      : super(key: key);
  final double? size;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: cardBackgrounColor,
          borderRadius: BorderRadius.circular(10),
        ),
        width: size,
        child: child);
  }
}
