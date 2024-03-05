import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:job_seeker/Screen/bookmark.dart';
import 'package:job_seeker/model/recommModel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final bgColor = Color(0XFF49AAA0);
  @override
  Widget build(BuildContext context) {
    RecomModel recomModel = RecomModel.rmModel[0];

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
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Find Your Dream Job!",
              style: TextStyle(
                  color: const Color(0XFF444752),
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            searchBox(context),
            SizedBox(
              height: 20,
            ),
            _Reminder(),
            SizedBox(
              height: 20,
            ),
            _Recommendations(rmModel: RecomModel.rmModel),
          ],
        ),
      ),
    );
  }
}

class _Recommendations extends StatelessWidget {
  const _Recommendations({
    super.key,
    required this.rmModel,
  });

  final List<RecomModel> rmModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommendations",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Color(0XFF444752)),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 140,
                width: MediaQuery.sizeOf(context).width * 0.42,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(
                          width: 32,
                          height: 45,
                          image: AssetImage(rmModel[0].imgUrl)),
                      trailing: Image(
                          width: 20,
                          height: 25,
                          image: AssetImage("assets/icons/bookmark.png")),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            rmModel[0].compName,
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            rmModel[0].pos,
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "${rmModel[0].salary} ",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11.5,
                                ),
                              ),
                              TextSpan(
                                  text: "/ year",
                                  style: TextStyle(fontSize: 12))
                            ])),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 140,
                width: MediaQuery.sizeOf(context).width * 0.42,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(
                          width: 32,
                          height: 45,
                          image: AssetImage(rmModel[1].imgUrl)),
                      trailing: Image(
                          width: 20,
                          height: 25,
                          image: AssetImage(
                            "assets/icons/bookmark.png",
                          ),
                          color: Color(0XFF49AAA0)),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            rmModel[1].compName,
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            rmModel[1].pos,
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "${rmModel[1].salary} ",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11.5,
                                ),
                              ),
                              TextSpan(
                                  text: "/ year",
                                  style: TextStyle(fontSize: 12))
                            ])),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 140,
                width: MediaQuery.sizeOf(context).width * 0.42,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(
                          width: 32,
                          height: 45,
                          image: AssetImage(rmModel[2].imgUrl)),
                      trailing: Image(
                          width: 20,
                          height: 25,
                          image: AssetImage("assets/icons/bookmark.png")),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            rmModel[2].compName,
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            rmModel[2].pos,
                            style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "${rmModel[2].salary} ",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11.5,
                                ),
                              ),
                              TextSpan(
                                  text: "/ year",
                                  style: TextStyle(fontSize: 12))
                            ])),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 140,
                width: MediaQuery.sizeOf(context).width * 0.42,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(
                          width: 32,
                          height: 45,
                          image: AssetImage(rmModel[3].imgUrl)),
                      trailing: Image(
                          width: 20,
                          height: 25,
                          image: AssetImage("assets/icons/bookmark.png")),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            rmModel[3].compName,
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            rmModel[3].pos,
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "${rmModel[3].salary} ",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11.5,
                                ),
                              ),
                              TextSpan(
                                  text: "/ year",
                                  style: TextStyle(fontSize: 12))
                            ])),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 140,
                width: MediaQuery.sizeOf(context).width * 0.42,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(
                          width: 32,
                          height: 45,
                          image: AssetImage(rmModel[4].imgUrl)),
                      trailing: Image(
                          width: 20,
                          height: 25,
                          image: AssetImage("assets/icons/bookmark.png")),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            rmModel[4].compName,
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            rmModel[4].pos,
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "${rmModel[4].salary} ",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11.5,
                                ),
                              ),
                              TextSpan(
                                  text: "/ year",
                                  style: TextStyle(fontSize: 12))
                            ])),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 140,
                width: MediaQuery.sizeOf(context).width * 0.42,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(
                          width: 32,
                          height: 45,
                          image: AssetImage(rmModel[5].imgUrl)),
                      trailing: Image(
                          width: 20,
                          height: 25,
                          image: AssetImage("assets/icons/bookmark.png")),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            rmModel[5].compName,
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            rmModel[5].pos,
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "${rmModel[5].salary} ",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11.5,
                                ),
                              ),
                              TextSpan(
                                  text: "/ year",
                                  style: TextStyle(fontSize: 12))
                            ])),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 140,
                width: MediaQuery.sizeOf(context).width * 0.42,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(
                          width: 32,
                          height: 45,
                          image: AssetImage(rmModel[6].imgUrl)),
                      trailing: Image(
                          width: 20,
                          height: 25,
                          image: AssetImage("assets/icons/bookmark.png")),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            rmModel[6].compName,
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            rmModel[6].pos,
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "${rmModel[6].salary} ",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11.5,
                                ),
                              ),
                              TextSpan(
                                  text: "/ year",
                                  style: TextStyle(fontSize: 12))
                            ])),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 140,
                width: MediaQuery.sizeOf(context).width * 0.42,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(
                          width: 32,
                          height: 45,
                          image: AssetImage(rmModel[7].imgUrl)),
                      trailing: Image(
                          width: 20,
                          height: 25,
                          image: AssetImage("assets/icons/bookmark.png")),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            rmModel[7].compName,
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            rmModel[7].pos,
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "${rmModel[7].salary} ",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11.5,
                                ),
                              ),
                              TextSpan(
                                  text: "/ year",
                                  style: TextStyle(fontSize: 12))
                            ])),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Reminder extends StatelessWidget {
  const _Reminder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Reminder",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Color(0XFF444752)),
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(148, 73, 170, 160)),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(207, 73, 170, 160)),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0XFF49AAA0)),
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: ListTile(
                        leading: Container(
                            padding: EdgeInsets.all(8.0),
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Image(
                              image: AssetImage("assets/icons/vimeo.png"),
                            )),
                        title: Text(
                          "Vimeo",
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        subtitle: Text(
                          "Product Designer",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        trailing: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color(0XFF49AAA0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "You have an interview today at ",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        TextSpan(
                          text: "10am",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 17),
                        )
                      ])),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget searchBox(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 18.0, right: 2.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width * 0.7,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: SizedBox(
            width: 100,
            child: TextField(
                decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
                size: 25,
              ),
              prefixIconConstraints:
                  BoxConstraints(maxHeight: 22, minWidth: 25),
              hintText: 'Search',
              border: InputBorder.none,
              
              hintStyle: TextStyle(color: Colors.grey, fontSize: 23),
            )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 70,
          width: 80,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF49AAA0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              onPressed: () {},
              child: Icon(
                size: 38,
                Icons.dashboard_customize_outlined,
                color: Color(0XFFFFFFFF),
              )),
        ),
      ],
    ),
  );
}
