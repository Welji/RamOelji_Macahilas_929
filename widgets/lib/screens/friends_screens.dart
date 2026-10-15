import 'package:flutter/material.dart';
import 'package:widgets/components/globalappbar_component.dart';

class FriendsScreens extends StatefulWidget {
  const FriendsScreens({super.key});

  @override
  State<FriendsScreens> createState() => _FriendsScreensState();
}

class _FriendsScreensState extends State<FriendsScreens> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: GlobalappbarComponent(),

    body: Center(
      child: Text("Friends Screen"),

      
    ),
    );

  }
}