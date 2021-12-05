import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'addjob.dart';
class grid extends StatefulWidget {
  grid({Key? key}) : super(key: key);

  @override
  _gridState createState() => _gridState();
}

class _gridState extends State<grid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8),
      physics: const BouncingScrollPhysics(),
      
       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
       mainAxisSpacing: 10,
         crossAxisCount: 1,
       ),
        // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //   maxCrossAxisExtent: 200,
        //   childAspectRatio: 3 / 2,
          
        //   crossAxisSpacing: 20,
        //   mainAxisSpacing: 200,
        // ),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        
    //     return InkWell(
    //  //       splashColor: Colors.greenAccent,
    //   borderRadius: BorderRadius.circular(15),
    //   child: Container(
    //     padding: const EdgeInsets.all(15),
    //     child: Text(
    //       "ooooook",
    //     //  style: Theme.of(context).textTheme.title,
    //     ),
    //     decoration: BoxDecoration(
    //       gradient: LinearGradient(
    //         colors: [
    //           // color.withOpacity(0.7),
    //           // color,
    //          // Colors.brown
    //         ],
    //         begin: Alignment.topLeft,
    //         end: Alignment.bottomRight,
    //       ),
    //       borderRadius: BorderRadius.circular(15),

    //     ),

    //   ),
    //   onTap: (){},
    //     )
    // 
    return InkWell(onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> addjob()));
    },
    child: Center(child: Container(
    //  color: Colors.deepPurple,
      height: 400,
      width: 300,
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         color: Colors.deepPurple
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Icon(Icons.add),
        Text("Add New Task")
      ],))),
      //splashColor: Colors.white,
  //  borderRadius: BorderRadius.circular(30),
    ) ;
          
       
      },
    );
  }
}
