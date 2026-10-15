
import 'dart:io';

import 'package:flutter/material.dart';

class PrelimScreen extends StatefulWidget {
  const PrelimScreen({super.key});

  @override
  State<PrelimScreen> createState() => _PrelimScreenState();
}

class _PrelimScreenState extends State<PrelimScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
         Text("Prelim Exam", style:TextStyle(color: Colors.blueAccent),),
         SizedBox(height: 25,),
          Text("Ram Oelji M. Macahilas"),
          SizedBox(height: 25),

        Row(children: [

        ],
        ),

        Container(
          height: 170,
          width: 170,
          color: Colors.blueAccent,
          child: Center(child: Text("BOX 1"),),
        ),

        SizedBox(height: 20,),

    
         Row(children: [
          SizedBox(width: 285,),
          Container(
          padding: EdgeInsets.all(20),
          height: 170,
          width: 170,
          color: Colors.blueAccent,
          child: Center(child: Text("BOX 2"),)
        ),
          SizedBox(width: 20,),

          Container(
            padding: EdgeInsets.all(20),
          height: 170,
          width: 170,
          color: Colors.blueAccent,
          child: Center(child: Text("BOX 3"),

    
          ),
        ),



         ]
         )
        ],
      )
    );
  }
}

