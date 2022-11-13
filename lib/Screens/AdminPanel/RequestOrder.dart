import 'package:eyeoperationflutterproject/Models/AdminModels/MechinModel.dart';

import 'package:eyeoperationflutterproject/Themes/MyColors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../GlobleWidgets/myWidget.dart';

class RequestOrderPage extends StatelessWidget {
  const RequestOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrounColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(mechineList.length, (index) {
              final data = mechineList[index];
              final isAvail = mechineList[index].available;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyCustomWidget(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Request send ${data.requestBy}',
                            style: Theme.of(context).textTheme.bodyText2),
                        const SizedBox(
                          height: 5,
                        ),
                        isAvail
                            ? Text(
                                'Available',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(color: primaryColor),
                              )
                            : Text(
                                'Not Available',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(color: primaryColor),
                              ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Mechine:  ${data.typeOfMechine}',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Date :  ${DateFormat.yMMMMEEEEd().format(data.timeofDelevery)}',
                          style: Theme.of(context).textTheme.bodyText2,
                        )
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: const [
                          Text(
                            'Approve',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.check,
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
