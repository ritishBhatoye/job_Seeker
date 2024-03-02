import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/widgets.dart';
import 'package:job_seeker/Screen/bookmark.dart';
import 'package:job_seeker/Screen/home.dart';
import 'package:job_seeker/Screen/messages.dart';
import 'package:job_seeker/Screen/profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _index = 0;
  List pages = [Home(), Messages(), Bookmark(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: pages.elementAt(_index),
      bottomNavigationBar: Container(
        // color: Colors.red,
        width: 110,
        height: MediaQuery.of(context).size.height * 0.11,
        margin: EdgeInsets.only(bottom: 15, left: 12, right: 12),
        alignment: Alignment.bottomCenter,
        // padding: EdgeInsets.only(top: 30),

        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.only(
        //       topRight: Radius.circular(60),
        //       topLeft: Radius.circular(60),
        //       // bottomLeft: Radius.circular(60),
        //       // bottomRight: Radius.circular(30),
        //     ),
        //     color: Colors.amber
        //     // boxShadow: [
        //     //   BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 400),
        //     // ],
        //     ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          child: BottomNavigationBar(
            elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _index,
            selectedLabelStyle: TextStyle(color: Color(0XFF49AAA0)),
            unselectedLabelStyle: TextStyle(color: Color(0XFF49AAA0)),
            selectedItemColor: Color(0XFF49AAA0),
            unselectedItemColor: Color.fromARGB(255, 171, 215, 247),
            onTap: (index) {
              setState(() {
                _index = index;
                print("Index : $index");
              });
            },
            //  showSelectedLabels: false,

            type: BottomNavigationBarType.shifting,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  // backgroundColor: Colors.green,
                  activeIcon: Wrap(children: [
                    Container(
                      width: 25,
                      child: Image.asset(
                        "assets/icons/home.png",
                        color: Color(0XFF49AAA0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        "Home",
                        style: TextStyle(color: Color.fromARGB(137, 1, 1, 1)),
                      ),
                    ),
                  ]),
                  icon: Container(
                      width: 18,
                      child: Image.asset(
                        "assets/icons/home.png",
                        color: Color.fromARGB(255, 153, 222, 215),
                      )),
                  // icon: Icon(
                  //   Icons.home_outlined,
                  //   color: Color.fromARGB(255, 153, 222, 215),
                  // ),
                  label: ''),
              BottomNavigationBarItem(
                  activeIcon: Wrap(children: [
                    Container(
                      width: 30,
                      child: Image.asset(
                        "assets/icons/chat.png",
                        color: Color(0XFF49AAA0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        "Chat",
                        style: TextStyle(color: Color.fromARGB(137, 1, 1, 1)),
                      ),
                    ),
                  ]),
                  icon: Container(
                    width: 22,
                    child: Image.asset(
                      "assets/icons/chat.png",
                      color: Color.fromARGB(255, 153, 222, 215),
                    ),
                  ),
                  // icon: Icon(
                  //   Icons.chat_outlined,
                  //   color: Color.fromARGB(255, 153, 222, 215),
                  // ),
                  label: ''),
              BottomNavigationBarItem(
                  activeIcon: Wrap(children: [
                    Container(
                      width: 30,
                      child: Image.asset(
                        "assets/icons/bookmarks.png",
                        color: Color(0XFF49AAA0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        "Bookmark",
                        style: TextStyle(color: Color.fromARGB(137, 1, 1, 1)),
                      ),
                    ),
                  ]),
                  icon: Container(
                    width: 20,
                    child: Image.asset(
                      "assets/icons/bookmarks.png",
                      color: Color.fromARGB(255, 153, 222, 215),
                    ),
                  ),
                  // icon: Icon(
                  //   Icons.collections_bookmark_outlined,
                  //   color: Color.fromARGB(255, 153, 222, 215),
                  // ),
                  label: ''),
              BottomNavigationBarItem(
                  activeIcon: Wrap(children: [
                    Container(
                        width: 30,
                        child: Image.asset(
                          "assets/icons/user.png",
                          color: Color(0XFF49AAA0),
                        )),
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        "Profile",
                        style: TextStyle(color: Color.fromARGB(137, 1, 1, 1)),
                      ),
                    ),
                  ]),
                  icon: Container(
                    width: 30,
                    child: Image.asset(
                      "assets/icons/user.png",
                      color: Color.fromARGB(255, 153, 222, 215),
                    ),
                  ),
                  // icon: Icon(
                  //   Icons.person_outline,
                  //   color: Color.fromARGB(255, 153, 222, 215),
                  // ),
                  label: ''),
            ],
          ),
        ),
      ),
    );
  }
}
