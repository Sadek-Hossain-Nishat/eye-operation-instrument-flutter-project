import 'package:flutter/material.dart';

import 'BoxWidget.dart';
import 'MyColors.dart';

class Managestaff extends StatefulWidget {
  const Managestaff({Key? key}) : super(key: key);

  @override
  State<Managestaff> createState() => _ManagestaffState();
}

class _ManagestaffState extends State<Managestaff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              height: MediaQuery.of(context).size.height * .20,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    ' WELCOME!',
                    style: TextStyle(
                        fontSize: 35,
                        letterSpacing: .8,
                        color: backgrounColor,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(' To Admin Panel Staff Management',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: backgrounColor,
                          wordSpacing: 1.2,
                          fontSize: 17,
                          fontWeight: FontWeight.w600))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Box(
                        iconData: Icons.person_add_alt,
                        title: 'Add',
                        detail: 'Add new staff',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Box(
                        iconData: Icons.edit,
                        title: 'Edit',
                        detail: 'Edit staff profile',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Box(
                        iconData: Icons.update,
                        title: 'Update',
                        detail: 'Update staff profile',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Box(
                        iconData: Icons.delete,
                        detail: 'Delete staff profile',
                        title: 'Delete',
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
