import 'package:eyeoperationflutterproject/admin/dashboard.dart';
import 'package:eyeoperationflutterproject/admin/machinerequestororder.dart';
import 'package:eyeoperationflutterproject/admin/managemachine.dart';
import 'package:eyeoperationflutterproject/admin/managepayment.dart';
import 'package:eyeoperationflutterproject/admin/managestaff.dart';
import 'package:eyeoperationflutterproject/admin/managetrip.dart';
import 'package:eyeoperationflutterproject/admin/reports.dart';
import 'package:flutter/material.dart';

class Adminpanel extends StatefulWidget {
  const Adminpanel({Key? key}) : super(key: key);

  @override
  State<Adminpanel> createState() => _AdminpanelState();
}

class _AdminpanelState extends State<Adminpanel> {
  var _titles = [
    'Dashboard',
    'Manage Staff',
    'Manage Machine',
    'Machine Request/Order',
    'Manage Payment',
    'Manage Trip',
    'Reports'
  ];
  var _pages = [
    Dashboard(),
    Managestaff(),
    Managemachine(),
    Machinerequest(),
    Managepayment(),
    Managetrip(),
    Reports()
  ];
  int _position = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(_titles[_position]),
      ),
      body: _pages[_position],
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back, color: Colors.white)),
                SizedBox(
                  width: 70,
                ),
                Text('Admin',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ))
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              height: 100,
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.account_box,
                  size: 100,
                  color: Colors.purple,
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text('Admin Name',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                )),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text('Dashboard'),
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(Icons.dashboard),
              onTap: () {
                setState(() {
                  _position = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Manage Staff'),
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(Icons.people),
              onTap: () {
                setState(() {
                  _position = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Manage Machine'),
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(Icons.hardware),
              onTap: () {
                setState(() {
                  _position = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Machine Request/Order'),
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(Icons.request_page),
              onTap: () {
                setState(() {
                  _position = 3;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Manage Payment'),
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(Icons.payment),
              onTap: () {
                setState(() {
                  _position = 4;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Manage Trip'),
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(Icons.trip_origin),
              onTap: () {
                setState(() {
                  _position = 5;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Reports'),
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: Icon(Icons.report),
              onTap: () {
                setState(() {
                  _position = 6;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    ));
  }
}
