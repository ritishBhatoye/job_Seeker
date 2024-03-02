import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:job_seeker/widgets/lineChart.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          actions: [
            IconButton(
              icon: Image.asset('assets/icons/bell.png'),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey[100],
        ),
        body: Container(
            child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            _Profile(),
            SizedBox(
              height: 20,
            ),
            _myResume(),
            _MyStats()
          ],
        )));
  }
}

class _MyStats extends StatelessWidget {
  const _MyStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Views",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                "Check details ",
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
          ),
          Row(
            children: [
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: "+37",
                    style: TextStyle(
                        color: Colors.grey[500], fontWeight: FontWeight.bold)),
                TextSpan(
                    text: " from last week",
                    style: TextStyle(color: Colors.grey[500])),
              ])),
            ],
          ),
          Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              child: LineChartWidget()),
          Container(
            margin: EdgeInsets.only(left: 210),
            width: 140,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 25,
                    child: Image.asset("assets/compIcons/snapchat.png")),
                Container(
                    width: 25,
                    child: Image.asset("assets/compIcons/netflix.png")),
                Container(
                    width: 25, child: Image.asset("assets/compIcons/meta.png")),
                Container(
                    width: 25,
                    child: Image.asset("assets/compIcons/apple.png")),
                Container(
                    width: 25,
                    child: Text(
                      " +5",
                      style: TextStyle(
                          color: Colors.grey[400], fontWeight: FontWeight.w700),
                    )),
                // Image.asset("assets/compIcons/netflix.png"),
                // Image.asset("assets/compName/snapchat.png"),
                // Image.asset("assets/compName/snapchat.png"),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class _myResume extends StatelessWidget {
  const _myResume({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 100,
        width: MediaQuery.sizeOf(context).width * 0.9,
        margin: EdgeInsets.symmetric(horizontal: 17.0, vertical: 10),
        child: Column(
          children: [
            Container(
              width: 300,
              margin: EdgeInsets.only(right: 100),
              child: Text(
                "My resume",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                  width: MediaQuery.sizeOf(context).width * 0.69,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Senior Software Developer",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                          Icon(
                            Icons.mode_edit_outlined,
                            color: Color(0XFF49AAA0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.keyboard_arrow_right_rounded),
                          Text("100k / year"),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "San Francisco",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            "Full-time  ",
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                          Text("Remote",
                              style: TextStyle(color: Colors.grey[500])),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 14,
                ),
                Container(
                  height: 160,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: EdgeInsets.all(21.5),
                          height: 74,
                          width: MediaQuery.sizeOf(context).height * 0.084,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Image(
                            image: AssetImage("assets/icons/plus.png"),
                            color: Color(0XFF49AAA0),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          padding: EdgeInsets.all(15.5),
                          height: 74,
                          width: MediaQuery.sizeOf(context).height * 0.084,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0XFF49AAA0),
                          ),
                          child: Image(
                            image: AssetImage("assets/icons/play.png"),
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class _Profile extends StatelessWidget {
  const _Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Center(
          child: Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Color(0XFF49AAA0),
                  width: 2.5,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Container(
              margin: EdgeInsets.all(2.0),
              child: CircleAvatar(
                foregroundColor: Colors.white,
                backgroundImage: AssetImage("assets/profile/PROF.jpeg"),
                radius: 200,
              ),
            ),
            // decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     image: new DecorationImage(
            //       image: AssetImage("assets/profile/PROF.jpeg"),
            //       fit: BoxFit.fill,
            //     )),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          "Ritish Bhatoye",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),
        ),
        Text(
          "SWE(Software Engineer)",
          style: TextStyle(color: Colors.grey[600]),
        ),
      ],
    ));
  }
}
