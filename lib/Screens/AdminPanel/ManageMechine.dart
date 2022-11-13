import 'package:eyeoperationflutterproject/Themes/MyColors.dart';
import 'package:flutter/material.dart';

import '../GlobleWidgets/myWidget.dart';

import 'AdminWidget/BoxWidget.dart';
import 'Managepayment.dart';
import 'Reports.dart';
import 'RequestOrder.dart';

class MechineManagePage extends StatelessWidget {
  const MechineManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              height: size.height * .20,
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
                  Text(' To Admin Panel Mechine Management',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: backgrounColor,
                          wordSpacing: 1.2,
                          fontSize: 17,
                          fontWeight: FontWeight.w600))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  MyCustomWidget(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: size.width * .4,
                              child: Box(
                                onPresss: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                          pageBuilder: ((context, animation,
                                                  secondaryAnimation) =>
                                              const RequestOrderPage())));
                                },
                                iconData: Icons.person_add_alt,
                                title: 'Add',
                                detail: 'Add new mechine',
                              ),
                            ),
                            SizedBox(
                              width: size.width * .4,
                              child: Box(
                                onPresss: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                          pageBuilder: ((context, animation,
                                                  secondaryAnimation) =>
                                              const ManagePaymentPage())));
                                },
                                iconData: Icons.edit,
                                title: 'Edit',
                                detail: 'Edit mechine',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: size.width * .4,
                              child: Box(
                                onPresss: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                          pageBuilder: ((context, animation,
                                                  secondaryAnimation) =>
                                              const ReportPage())));
                                },
                                iconData: Icons.update,
                                title: 'Update',
                                detail: 'Update mechine',
                              ),
                            ),
                            SizedBox(
                              width: size.width * .4,
                              child: Box(
                                onPresss: () {},
                                iconData: Icons.delete,
                                detail: 'Delte mechine',
                                title: 'Delete',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: -35,
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          shape: BoxShape.circle,
                          border: Border.all(width: 5, color: Colors.white)),
                      child: const Icon(
                        Icons.manage_accounts,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
