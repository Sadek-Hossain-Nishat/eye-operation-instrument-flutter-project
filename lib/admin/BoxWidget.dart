import 'package:flutter/material.dart';

import 'MyColors.dart';
import 'myWidget.dart';

class Box extends StatelessWidget {
  const Box({
    Key? key,
    required this.iconData,
    required this.title,
    required this.detail,
  }) : super(key: key);
  final IconData iconData;
  final String title;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 10,
      child: MyCustomWidget(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: primaryColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            detail,
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(color: primaryColor, fontSize: 14),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 35,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white, fontSize: 14),
              ),
            ),
          )
        ],
      )),
    );
  }
}
