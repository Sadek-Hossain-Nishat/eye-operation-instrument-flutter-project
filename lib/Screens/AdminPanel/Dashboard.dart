import 'package:flutter/material.dart';

import 'AdminWidget/BoxWidget.dart';
import 'RequestOrder.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
                  color: Colors.blue,
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
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(' To Admin Panel Dashboard',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: Colors.white,
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
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Box(
                        iconData: Icons.people,
                        title: '20',
                        detail: 'Total Staffs',
                        onPresss: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: ((context, animation,
                                          secondaryAnimation) =>
                                      const RequestOrderPage())));
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Box(
                        iconData: Icons.medical_services,
                        title: '4',
                        detail: 'Total Doctors',
                        onPresss: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: ((context, animation,
                                          secondaryAnimation) =>
                                      const RequestOrderPage())));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Box(
                        iconData: Icons.collections_bookmark_rounded,
                        title: '10',
                        detail: 'Machine Book',
                        onPresss: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: ((context, animation,
                                          secondaryAnimation) =>
                                      const RequestOrderPage())));
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Box(
                        iconData: Icons.bookmark_add,
                        title: '4',
                        detail: 'Machine Remain',
                        onPresss: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: ((context, animation,
                                          secondaryAnimation) =>
                                      const RequestOrderPage())));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
