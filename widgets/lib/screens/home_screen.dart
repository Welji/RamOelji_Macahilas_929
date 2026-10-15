import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        Text("Hello World", style: TextStyle(color: Colors.cyan),),
        SizedBox(height: 150,),
        Text("Hi world", style: TextStyle(color: Colors.deepPurpleAccent),),


        Row(children: [
        Text("Hello World"),
        SizedBox(width: 150,),
        Text(" Hi world "),

        ],),
        
          Container(
            height: 250,
            width: 250,
            color: const Color.fromARGB(255, 190, 250, 250),
            child: Center(child: Text("Hello guys", style: TextStyle(fontStyle: FontStyle.italic)),),
                                                                                       
          ),
        ],
      ),
    );
  }
}