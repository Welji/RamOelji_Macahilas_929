import 'package:flutter/material.dart';
import 'package:widgets/components/globalappbar_component.dart';
import 'package:widgets/components/newsfeedcomponent.dart';

class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({super.key});

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {

  final List<Map<String, String>> newsfeed = [
    {
      "username": "John Doe",
      "timeposted": "3 hours ago",
      "status": "Having a great day!",
      "likes": "120",
      "comments": "25",
      "shares": "10",
    },
    {
      "username": "Jane Smith",
      "timeposted": "23 hours ago",
      "status": "Learning Flutter is fun!",
      "likes": "250",
      "comments": "40",
      "shares": "15",
    },
    {
      "username": "Michael Cruz",
      "timeposted": "12 hours ago",
      "status": "Working on my new project.",
      "likes": "89",
      "comments": "12",
      "shares": "4",
    },

    {
      "username": "lei",
      "timeposted": "2 hours ago",
      "status": "Hanging with friends.",
      "likes": "99",
      "comments": "10",
      "shares": "2",
    },

   {
      "username": "Michael Jordan",
      "timeposted": "16 hours ago",
      "status": "Playing golf.",
      "likes": "234k",
      "comments": "124k",
      "shares": "59k",
    },

    {
      "username": "Win dol",
      "timeposted": "4 hours ago",
      "status": "Relxing.",
      "likes": "24",
      "comments": "4",
      "shares": "9",
    },
     {
      "username": "Welji",
      "timeposted": "5 hours ago",
      "status": "Playing Basketball.",
      "likes": "23",
      "comments": "12",
      "shares": "5",
    },
     {
      "username": "Joe James",
      "timeposted": "8 months ago",
      "status": "Really Happy!.",
      "likes": "34",
      "comments": "14",
      "shares": "13",
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),

      body: ListView.builder(
        padding: const EdgeInsets.all(10),

        itemCount: newsfeed.length,

        itemBuilder: (context, index) {
          final post = newsfeed[index];

          return Newsfeedcomponent(
            username: post["username"],
            timeposted: post["timeposted"],
            status: post["status"],
            numberoflikes: post["likes"],
            numberofcomments: post["comments"],
            numberofshares: post["shares"],
          );
        },
      ),
    );
  }
}