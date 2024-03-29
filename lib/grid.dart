import 'package:flutter/material.dart';
import 'package:mrigrakksha/Food_recommendations/food.dart';
import 'package:mrigrakksha/General%20Care/general_care.dart';
import 'package:mrigrakksha/Adopt/ownbanner.dart';
import 'package:mrigrakksha/Helpline/Helpline.dart';
import 'package:mrigrakksha/Helpline/helplinebanner.dart';
import 'package:mrigrakksha/MyLogin.dart';
import 'package:mrigrakksha/Remainders/notification.dart';
import 'package:mrigrakksha/heat/heat.dart';
import 'package:mrigrakksha/prakrithi%20identification/prakrithi.dart';
import 'package:mrigrakksha/quiz/quizbanner.dart';
import 'package:mrigrakksha/seasonalcare/seasonalcare.dart';
import 'package:mrigrakksha/vaccines/start_screen.dart';

void main() => runApp(gridPage());

class gridPage extends StatefulWidget {
  @override
  State<gridPage> createState() => _MyAppState();
}

class _MyAppState extends State<gridPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 242, 231, 231),
          drawer: Drawer(
            backgroundColor: Color.fromARGB(255, 242, 231, 231),
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Container(
                    padding: EdgeInsets.fromLTRB(15, 2, 15, 2),
                    child: Text(
                      "Ramu",
                      style: TextStyle(
                          color: Color(0xff19B9AF),
                          fontSize: 14,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  accountEmail: Text(""),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      "assets/Homepage/ramu.jpg",
                    ),
                    radius: 100.0,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0), BlendMode.dstATop),
                      image: AssetImage("assets/bg.png"),
                    ),
                  ),
                  otherAccountsPictures: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                        "assets/dog1.jpg",
                      ),
                    ),
                    //   CircleAvatar(
                    //     backgroundColor: Colors.white,
                    //     backgroundImage: AssetImage("assets/dog2.jpeg"),
                    //   ),
                  ],
                ),
                ListTile(
                  tileColor: Color.fromARGB(255, 242, 231, 231),
                  leading: Icon(
                    Icons.person,
                    color: Color(0xff19B9AF),
                  ),
                  title: Text(
                    "My Profile",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Scaffold(
                            body: Center(
                              child: Text("profile page"),
                            ),
                          ),
                        ));
                  },
                ),
                Divider(
                  height: 10,
                ),
                ListTile(
                  tileColor: Color.fromARGB(255, 242, 231, 231),
                  leading: Icon(
                    Icons.home,
                    color: Color(0xff19B9AF),
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => gridPage()));
                  },
                ),
                Divider(
                  height: 10,
                  // color:backgroundColor: Color(0xff19B9AF),
                ),
                ListTile(
                  tileColor: Color.fromARGB(255, 242, 231, 231),
                  leading: Icon(
                    Icons.wb_incandescent_sharp,
                    color: Color(0xff19B9AF),
                  ),
                  title: Text(
                    "About",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Scaffold(
                            body: Center(
                              child: Text("About"),
                            ),
                          ),
                        ));
                  },
                ),
                Divider(
                  height: 10,
                  // color:backgroundColor: Color(0xff19B9AF),
                ),
                ListTile(
                  tileColor: Color.fromARGB(255, 242, 231, 231),
                  leading: Icon(
                    Icons.live_help_outlined,
                    color: Color(0xff19B9AF),
                  ),
                  title: Text(
                    "Help Line",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Scaffold(
                            body: Center(
                              child: Text("help line"),
                            ),
                          ),
                        ));
                  },
                ),
                Divider(
                  height: 10,
                  //color:backgroundColor: Color(0xff19B9AF),
                ),
                ListTile(
                  tileColor: Color.fromARGB(255, 242, 231, 231),
                  leading: Icon(
                    Icons.volunteer_activism,
                    color: Color(0xff19B9AF),
                  ),
                  title: Text(
                    "Activity & Wellness",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Scaffold(
                            body: Center(
                              child: Text("Activity and Wellness"),
                            ),
                          ),
                        ));
                  },
                ),
                Divider(
                  height: 10,
                  //color:backgroundColor: Color(0xff19B9AF),
                ),
                ListTile(
                  tileColor: Color.fromARGB(255, 242, 231, 231),
                  leading: Icon(
                    Icons.settings,
                    color: Color(0xff19B9AF),
                  ),
                  title: Text(
                    "Settings",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Scaffold(
                            body: Center(
                              child: Text("Settings"),
                            ),
                          ),
                        ));
                  },
                ),
                Divider(
                  height: 10,
                  // color:backgroundColor: Color(0xff19B9AF),
                ),
                ListTile(
                  tileColor: Color.fromARGB(255, 242, 231, 231),
                  leading: Icon(
                    Icons.forum_outlined,
                    color: Color(0xff19B9AF),
                  ),
                  title: Text(
                    "Forum",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Scaffold(
                            body: Center(
                              child: Text("Forum"),
                            ),
                          ),
                        ));
                  },
                ),
                Divider(
                  height: 10,
                  //color:backgroundColor: Color(0xff19B9AF),
                ),
                ListTile(
                  tileColor: Color.fromARGB(255, 242, 231, 231),
                  leading: Icon(
                    Icons.person_add,
                    color: Color(0xff19B9AF),
                  ),
                  title: Text(
                    "Invite a friend",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Scaffold(
                            body: Center(
                              child: Text("Invite Friend"),
                            ),
                          ),
                        ));
                  },
                ),
                Divider(
                  height: 10,
                  //color:backgroundColor: Color(0xff19B9AF),
                ),
                ListTile(
                  tileColor: Color.fromARGB(255, 242, 231, 231),
                  leading: Icon(
                    Icons.share,
                    color: Color(0xff19B9AF),
                  ),
                  title: Text(
                    "Share",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Scaffold(
                            body: Center(
                              child: Text("Share"),
                            ),
                          ),
                        ));
                  },
                ),
                Divider(
                  height: 10,
                  // color:backgroundColor: Color(0xff19B9AF),
                ),
                ListTile(
                  tileColor: Color.fromARGB(255, 242, 231, 231),
                  leading: Icon(
                    Icons.outbond_rounded,
                    color: Color(0xff19B9AF),
                  ),
                  title: Text(
                    "Sign Out",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyLogin(),
                        ));
                  },
                ),
                Divider(
                  height: 10,
                  // color:backgroundColor: Color(0xff19B9AF),
                ),
              ],
            ),
          ),
          appBar: AppBar(
              // automaticallyImplyLeading: false,
              title: Center(
                child: Text(
                  'Features',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 25),
                ),
              ),
              backgroundColor: Color(0xff19B9AF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(190),
              ))),
          body: Center(
              child: GridView.count(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(10),
            crossAxisCount: 2,
            children: [
              // Container(
              //   decoration: BoxDecoration(
              //       color: Color.fromARGB(255, 242, 231, 231),
              //       border: Border.all(color: Colors.white),
              //       borderRadius: BorderRadius.circular(5),
              //       boxShadow: [
              //         BoxShadow(
              //           blurRadius: 7,
              //           spreadRadius: 4,
              //           color: Colors.black26,
              //         )
              //       ]),
              //   margin: const EdgeInsets.all(20),
              //   child: Material(
              //     type: MaterialType.transparency,
              //     child: InkWell(
              //       onTap: () {},
              //       splashColor: Colors.black26,
              //       child: IntrinsicHeight(
              //         child: Padding(
              //           padding: const EdgeInsets.all(12.0),
              //           child:
              //               Column(mainAxisSize: MainAxisSize.min, children: [
              //             Image.asset(
              //               'assets/gen.png',
              //               fit: BoxFit.cover,
              //               width: 80,
              //               height: 80,
              //             ),
              //             const SizedBox(
              //               height: 10,
              //             ),
              //             Text(
              //               'Prakriti identify',
              //               style: TextStyle(color: Colors.white, fontSize: 2),
              //             )
              //           ]),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              ElevatedButton(
                  child: Text(
                    'Identify Prakriti',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 242, 231, 231),
                    // side: BorderSide(color: Colors.yellow, width: 5),
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const prakrithi()),
                    );
                  }),
              Container(
                child: Image.asset(
                  'assets/gen.png',
                ),
                margin: EdgeInsets.fromLTRB(
                  20,
                  20,
                  20,
                  20,
                ),
              ),
              ElevatedButton(
                  child: Text(
                    'General Care',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 242, 231, 231),
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GeneralCare()),
                    );
                  }),
              Image.asset('assets/Homepage/gencare.png'),
              ElevatedButton(
                  child: Center(
                      child: Text(
                    'Health Quiz',
                    style: TextStyle(color: Colors.black),
                  )),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 242, 231, 231),
                    // side: BorderSide(color: Colors.yellow, width: 5),
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => quizbannerPage()),
                    );
                  }),
              Image.asset('assets/Homepage/healthquiz.png'),
              ElevatedButton(
                  child: Text(
                    'Adopt a Dog',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 242, 231, 231),
                    // side: BorderSide(color: Colors.yellow, width: 5),
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ownbanner()),
                    );
                  }),
              Image.asset('assets/Homepage/adopt.png'),
              ElevatedButton(
                  child: Center(
                      child: Text(
                    'Food      Recommendation',
                    style: TextStyle(color: Colors.black, fontSize: 19),
                  )),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 242, 231, 231),
                    // side: BorderSide(color: Colors.yellow, width: 5),
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Foodrecommendations()),
                    );
                  }),
              Container(
                child: Image.asset('assets/Homepage/food.png'),
                margin: EdgeInsets.fromLTRB(
                  20,
                  20,
                  20,
                  20,
                ),
              ),
              ElevatedButton(
                  child: Center(
                      child: Text(
                    'Remainders',
                    style: TextStyle(color: Colors.black),
                  )),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 242, 231, 231),
                    // side: BorderSide(color: Colors.yellow, width: 5),
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => notification()),
                    );
                  }),
              Image.asset('assets/Homepage/remainder.png'),
              // ElevatedButton(
              //     child: Text('OWN A DOG'),
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Color.fromARGB(255, 242, 231, 231),
              //       // side: BorderSide(color: Colors.yellow, width: 5),
              //       textStyle: const TextStyle(
              //           color: Colors.white,
              //           fontSize: 20,
              //           fontStyle: FontStyle.normal),
              //     ),
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => const find()),
              //       );
              //     }),
              // Image.asset('assets/own.png'),
              ElevatedButton(
                  child: Text(
                    'Help Line',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 242, 231, 231),
                    // side: BorderSide(color: Colors.yellow, width: 5),
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => helplinebannerPage()),
                    );
                  }),
              Image.asset(
                'assets/helpline/dogcall.png',
              ),
              ElevatedButton(
                  child: Text(
                    'Seasonal Care',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 242, 231, 231),
                    // side: BorderSide(color: Colors.yellow, width: 5),
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const seasonalcare()),
                    );
                  }),
              Container(
                child: Image.asset('assets/Homepage/season.png'),
                margin: EdgeInsets.fromLTRB(
                  20,
                  20,
                  20,
                  20,
                ),
              ),
              ElevatedButton(
                  child: Text(
                    'Care dogs in heat',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 242, 231, 231),
// side: BorderSide(color: Colors.yellow, width: 5),
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const heatpage()),
                    );
                  }),
              Container(
                child: Image.asset('assets/Homepage/heat.png'),
                margin: EdgeInsets.fromLTRB(
                  10,
                  10,
                  10,
                  10,
                ),
              ),
              ElevatedButton(
                  child: Text(
                    'Vaccines',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 242, 231, 231),
// side: BorderSide(color: Colors.yellow, width: 5),
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StartScreen()),
                    );
                  }),
              Container(
                child: Image.asset('assets/Homepage/vaccine.png'),
                margin: EdgeInsets.fromLTRB(
                  10,
                  10,
                  10,
                  10,
                ),
              ),
            ],
          ))),
    );
    // );
  }
}
