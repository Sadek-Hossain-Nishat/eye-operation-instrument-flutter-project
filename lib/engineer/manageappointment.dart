import 'package:eyeoperationflutterproject/engineer/availablemachine.dart';
import 'package:eyeoperationflutterproject/engineer/bookmachine.dart';
import 'package:flutter/material.dart';

class Manageappointment extends StatefulWidget {
  const Manageappointment({Key? key}) : super(key: key);

  @override
  State<Manageappointment> createState() => _ManageappointmentState();
}

class _ManageappointmentState extends State<Manageappointment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black87,
                  title: Text(
                    'Manage Appointment',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  centerTitle: true,
                  bottom: TabBar(
                      indicator: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(50), // Creates border
                          color: Colors.deepPurple),
                      tabs: [
                        Tab(text: 'Available Machine'),
                        Tab(text: 'Book Machine'),
                      ],
                      labelColor: Colors.white,
                      labelStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                      unselectedLabelStyle:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                      unselectedLabelColor: Colors.deepPurple),
                ),
                body: TabBarView(
                    children: [Availablemachine(), Bookmachine()]))));
  }
}
