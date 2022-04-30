import 'package:flutter/material.dart';

class Availablemachine extends StatefulWidget {
  const Availablemachine({Key? key}) : super(key: key);

  @override
  State<Availablemachine> createState() => _AvailablemachineState();
}

class _AvailablemachineState extends State<Availablemachine> {
  List _imagespath = [
    'machine1.jpg',
    'machine2.jpg',
    'machine3.jpg',
  ];

  List _titles = [
    'machine1',
    'machine2',
    'machine3',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              title: Image.asset('images/' + _imagespath[index]),
              subtitle: Text(
                _titles[index],
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 18),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_add,
                    size: 40,
                    color: Colors.pinkAccent,
                  )),
            );
          },
          itemCount: _imagespath.length,
        ),
      ),
    );
  }
}
