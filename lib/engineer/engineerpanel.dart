import 'package:eyeoperationflutterproject/admin/managemachine.dart';
import 'package:eyeoperationflutterproject/engineer/manageappointment.dart';
import 'package:eyeoperationflutterproject/engineer/managemachineforengineer.dart';
import 'package:eyeoperationflutterproject/engineer/managemachinelocation.dart';
import 'package:eyeoperationflutterproject/engineer/managepaymentengineer.dart';
import 'package:eyeoperationflutterproject/engineer/managevisit.dart';
import 'package:flutter/material.dart';

class Enginner extends StatefulWidget {
  const Enginner({Key? key}) : super(key: key);

  @override
  State<Enginner> createState() => _EnginnerState();
}

class _EnginnerState extends State<Enginner> {
  int _position = 0;
  var _items = [
    'Manage Appointment',
    'Manage Machine Location',
    'Manage Machine',
    'Manage Payment',
    'Manage Visit'
  ];
  var _icons = [
    Icons.medication,
    Icons.location_on,
    Icons.hardware,
    Icons.payment,
    Icons.tour
  ];
  var _pages = [
    Manageappointment(),
    Managemachinelocation(),
    Managemachineforengineer(),
    Managepaymentengineer(),
    Managevisit()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.deepPurple,
        backgroundColor: Colors.white,
        title: Text('Engineer Panel'),
      ),
      body: _pages[_position],
      drawer: Drawer(
        child: ListView(children: [
          Row(
            children: [
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.deepPurple,
                  ))
            ],
          ),
          DrawerHeader(
            child: CircleAvatar(
              foregroundColor: Colors.deepPurple,
              child: Image.asset(
                'images/engineer.png',
                height: 100,
                width: 100,
              ),
            ),
          ),
          Text(
            'Engineer Name',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.deepPurpleAccent,
                fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            iconColor: Colors.deepPurple,
            textColor: Colors.deepPurple,
            leading: Icon(_icons[0]),
            title: Text(_items[0]),
            onTap: () {
              setState(() {
                _position = 0;
                Navigator.pop(context);
              });
            },
          ),
          ListTile(
            iconColor: Colors.deepPurple,
            textColor: Colors.deepPurple,
            leading: Icon(_icons[1]),
            title: Text(_items[1]),
            onTap: () {
              setState(() {
                _position = 1;
                Navigator.pop(context);
              });
            },
          ),
          ListTile(
            iconColor: Colors.deepPurple,
            textColor: Colors.deepPurple,
            leading: Icon(_icons[2]),
            title: Text(_items[2]),
            onTap: () {
              setState(() {
                _position = 2;
                Navigator.pop(context);
              });
            },
          ),
          ListTile(
            iconColor: Colors.deepPurple,
            textColor: Colors.deepPurple,
            leading: Icon(_icons[3]),
            title: Text(_items[3]),
            onTap: () {
              setState(() {
                _position = 3;
                Navigator.pop(context);
              });
            },
          ),
          ListTile(
            iconColor: Colors.deepPurple,
            textColor: Colors.deepPurple,
            leading: Icon(_icons[4]),
            title: Text(_items[4]),
            onTap: () {
              setState(() {
                _position = 4;
                Navigator.pop(context);
              });
            },
          ),
        ]),
      ),
    ));
  }
}
