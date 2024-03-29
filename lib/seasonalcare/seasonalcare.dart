import 'package:flutter/material.dart';
import 'package:mrigrakksha/seasonalcare/Spring.dart';

import 'Autumn.dart';
import 'summer.dart';
import 'winter.dart';
import 'monsoon.dart';

class seasonalcare extends StatefulWidget {
  const seasonalcare({super.key});

  @override
  State<seasonalcare> createState() => _seasonalcareState();
}

class _seasonalcareState extends State<seasonalcare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'Select the season',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          backgroundColor: Color(0xff19B9AF),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150),
                  bottomLeft: Radius.circular(150)))),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/ses.png",
                  fit: BoxFit.contain,
                  height: 250,
                ),
                // ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       backgroundColor: Color(0xff19B9AF),
                //       side: BorderSide(
                //         color: Color(0xff19B9AF),
                //         width: 2,
                //       ),
                //     ),
                //     onPressed: (() {
                //       Navigator.push(context,
                //           MaterialPageRoute(builder: ((context) => winter())));
                //     }),
                //     child: Text(
                //       'Winter',
                //       style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 30,
                //           fontWeight: FontWeight.w100),
                //     )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Color(0xff19B9AF),
                    side: BorderSide(color: Colors.white),
                    shadowColor: Colors.greenAccent,
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    minimumSize: Size(200, 90),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => winter()),
                    );
                  },
                  child: const Text(
                    'winter',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Color(0xff19B9AF),
                    side: BorderSide(color: Colors.white),
                    shadowColor: Colors.greenAccent,
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    minimumSize: Size(200, 90),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => summer()),
                    );
                  },
                  child: const Text(
                    'Summer',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Color(0xff19B9AF),
                    side: BorderSide(color: Colors.white),
                    shadowColor: Colors.greenAccent,
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    minimumSize: Size(200, 90),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => monsoon()),
                    );
                  },
                  child: const Text(
                    'Monsoon',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Color(0xff19B9AF),
                    side: BorderSide(color: Colors.white),
                    shadowColor: Colors.greenAccent,
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    minimumSize: Size(200, 90),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => autumn()),
                    );
                  },
                  child: const Text(
                    'Autumn',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Color(0xff19B9AF),
                    side: BorderSide(color: Colors.white),
                    shadowColor: Colors.greenAccent,
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    minimumSize: Size(200, 90),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Spring()),
                    );
                  },
                  child: const Text(
                    'Spring',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // );
  }
}
