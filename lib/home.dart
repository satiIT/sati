import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'grid.dart';
class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  //var thisInstant = DateTime.now();
    String formattedDate = DateFormat.yMMMMEEEEd().format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(elevation: 0,),
      body: Container(
        padding: EdgeInsets.only(left: 13),
        width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height/0.9,
        color: Colors.blueGrey,
    
        child: Column(children: [Align(
           alignment: Alignment.centerLeft,
          child: Container(
               
               width: MediaQuery.of(context).size.width/3,
                  height: MediaQuery.of(context).size.height/8,
            child: Text(formattedDate.toString(),style: 
       //   textAlign: TextAling.lft ,
            TextStyle(
              
              fontSize: 25,
            ),)),
        ),
        Center(
          child: Container(
           // color: Colors.white,
               width: MediaQuery.of(context).size.width/0.9,
                height:  500,//MediaQuery.of(context).size.height,
          //  color: 
            child: grid(),

          
          ),
        )

      ],),),
    );
  }
}