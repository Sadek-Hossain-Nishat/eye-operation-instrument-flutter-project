import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../Models/AdminModels/MechinModel.dart';
import '../../Themes/MyColors.dart';
import '../GlobleWidgets/myWidget.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrounColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(list.length, (index) {
              final data = list[index];
              final isAvail = list[index].isOk;
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
                      child: Image.asset(data.imagePath),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Name ${data.name}',
                            style: Theme.of(context).textTheme.bodyText1),
                        const SizedBox(
                          height: 5,
                        ),
                        isAvail
                            ? Text(
                                'OK',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(color: Colors.green),
                              )
                            : Text(
                                'Need Services',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(color: Colors.red),
                              ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Used:  ${data.used} Times',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontWeight: FontWeight.w500),
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
                            'Details',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.toc,
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
            })
          ],
        ),
      )),
    );
  }
}
