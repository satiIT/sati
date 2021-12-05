import 'package:flutter/material.dart';
class addjob extends StatefulWidget {
  addjob({Key? key}) : super(key: key);

  @override
  _addjobState createState() => _addjobState();
}

class _addjobState extends State<addjob> {
  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Task"),),
     body: Container(
       child: Text("hello"),
    ));
  }
}