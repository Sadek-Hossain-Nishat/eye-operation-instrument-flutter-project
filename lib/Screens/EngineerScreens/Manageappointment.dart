import 'package:eyeoperationflutterproject/Models/AdminModels/MechinModel.dart';
import 'package:eyeoperationflutterproject/Themes/MyColors.dart';
import 'package:flutter/material.dart';

import '../GlobleWidgets/myWidget.dart';

class Manageappointment extends StatefulWidget {
  const Manageappointment({Key? key}) : super(key: key);

  @override
  State<Manageappointment> createState() => _ManageappointmentState();
}

class _ManageappointmentState extends State<Manageappointment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleTextStyle: TextStyle(fontSize: 18),
          title: Text('Available Machine'),
        ),
        body: Center(
            child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyCustomWidget(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Image.asset(list[index].imagePath),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Name ${list[index].name}',
                                style: Theme.of(context).textTheme.bodyText1),
                            const SizedBox(
                              height: 5,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: const [
                              Text(
                                'Add Book',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              )
                            ]),
                          ),
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                        )
                      ],
                    )),
                  );
                })),
      ),
    );
  }
}
