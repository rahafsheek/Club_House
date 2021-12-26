import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test6/data.dart';
import 'package:flutter_test6/widget/room_card.dart';
import 'package:flutter_test6/widget/user_profile_image.dart';


class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.search,
          ),
          onPressed: () {  },
        ),
        actions: [
          IconButton(
            icon: Icon(
              CupertinoIcons.envelope_badge,size: 24,
            ),
            onPressed: () {  },
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.calendar,
            ),
            onPressed: () {  },
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.bell,
            ),
            onPressed: () {  },
          ),
          GestureDetector(
            onTap: (){},

            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: UserProfileImage(size: 40.0,imageURL: currentUser.imageURL,),
            ),
          ),
        ],
      ),
      body:
      Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 100),
            children: [
              ...roomList.map((e) => RoomCard(room: e)),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors:
                  [Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                    Theme.of(context).scaffoldBackgroundColor,
                  ]
                )
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            child: ElevatedButton.icon(onPressed: () {},
                icon: Icon(
                  CupertinoIcons.add,
                  size: 21,
                  color: Colors.white,
                ),
              label: Text(
                'Start a Room',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(12),
                primary: Theme.of(context).accentColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                )
              ),
            ),
          ),
        ],
      )
    );

  }
}


