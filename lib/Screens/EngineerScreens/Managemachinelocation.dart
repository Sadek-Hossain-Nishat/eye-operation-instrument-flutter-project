import 'package:flutter/material.dart';

import '../../Models/AdminModels/MechinModel.dart';
import '../../Themes/MyColors.dart';
import '../GlobleWidgets/myWidget.dart';

class Managemachinelocation extends StatefulWidget {
  const Managemachinelocation({Key? key}) : super(key: key);

  @override
  State<Managemachinelocation> createState() => _ManagemachinelocationState();
}

class _ManagemachinelocationState extends State<Managemachinelocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            Text(
                              'Location: Mumbai',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(color: Colors.green),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Transport: Ship',
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
                })));
  }
}
