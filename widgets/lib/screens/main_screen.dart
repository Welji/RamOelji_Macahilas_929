import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgets/screens/friends_screens.dart';
import 'package:widgets/screens/newsfeed_screen.dart';
import 'package:widgets/screens/notification_screen.dart';
import 'package:widgets/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

 int currentpage = 0;

 final List<Widget> pages = const [
  NewsfeedScreen(),
  FriendsScreens(),
  NotificationScreen(),
  ProfileScreen(),
 ];

 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentpage],

      bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentpage,
      onTap: (index){
      setState(() {
          currentpage = index;
        });

      },
      items: [
        BottomNavigationBarItem(backgroundColor: Colors.blueAccent, icon: Icon(Icons.feed), label: "Newsfeed"),
        BottomNavigationBarItem(backgroundColor: Colors.blueAccent, icon: Icon(Icons.person), label: "Friends"),
        BottomNavigationBarItem(backgroundColor: Colors.blueAccent, icon: Icon(Icons.notification_add), label: "Notification"),
        BottomNavigationBarItem(backgroundColor: Colors.blueAccent, icon: Icon(Icons.face), label: "Profile"),

      ],
      


        )
       );  
     }
   }