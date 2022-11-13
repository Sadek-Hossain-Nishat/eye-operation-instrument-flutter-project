import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../Models/AdminModels/MechinModel.dart';
import '../../Themes/MyColors.dart';
import '../GlobleWidgets/myWidget.dart';

class ManagePaymentPage extends StatelessWidget {
  const ManagePaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrounColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(paymentList.length, (index) {
              final data = paymentList[index];
              final isAvail = paymentList[index].isPending;
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
                        Text('Send By ${data.sender}',
                            style: Theme.of(context).textTheme.bodyText2),
                        const SizedBox(
                          height: 5,
                        ),
                        isAvail
                            ? Text(
                                'Pending',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(color: primaryColor),
                              )
                            : Text(
                                'Received',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(color: primaryColor),
                              ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Rupees:  ${data.payment}',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  color: !isAvail ? Colors.green : Colors.red,
                                  fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Date :  ${DateFormat.yMMMMEEEEd().format(data.timeofPayment)}',
                          style: Theme.of(context).textTheme.bodyText2,
                        )
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: const [
                          Text(
                            'Invoice',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.payment,
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
