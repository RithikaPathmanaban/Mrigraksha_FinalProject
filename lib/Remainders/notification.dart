import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mrigrakksha/quiz/quizbanner.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'SELECT YOUR DOG AGE',
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
      body: Center(
        // Text('Select your Dog\s Age'),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            // Text('Select your Dog\s Age'),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder()),
                    child: Image.asset(
                      'assets/profile.jpg',
                      fit: BoxFit.cover,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => con()));
                    },
                  ),
                  Text(
                    '45 days',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder()),
                    child:
                        // Text('3 weeks from first vaccine'),
                        Image.asset(
                      'assets/dog1.jpg',
                      fit: BoxFit.cover,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const con2()));
                    },
                  ),
                  Text('3 weeks from first vaccine'),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder()),
                    child:
                        // Text('3 weeks from second vaccine'),
                        Image.asset(
                      'assets/images.jpeg',
                      fit: BoxFit.cover,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const con3()));
                    },
                  ),
                  Text('3 weeks from second vaccine'),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder()),
                    child:
                        // Text('3 weeks after anti-rabies shot'),
                        Image.asset(
                      'assets/profile.jpg',
                      // fit: BoxFit.cover,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const con4()));
                    },
                  ),
                  Text('3 weeks after anti-rabies shot'),
                ],
              ),
            ),
          ],
          padding: EdgeInsets.all(15),
          shrinkWrap: true,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class con extends StatefulWidget {
  const con({super.key});

  @override
  State<con> createState() => _bluecrossState();
}

class _bluecrossState extends State<con> {
  Future<void> _copyToClipboard() async {
    await Clipboard.setData(ClipboardData(text: str));
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      duration: Duration(milliseconds: 800),
      backgroundColor: Color(0xff19B9AF),
      content: Text(
        '               Will be notified after 3 weeks',
        style: TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    ));
  }

  final str = '0300 790 9903';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'REMAINDER',
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
      body: Center(
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.fromLTRB(20, 70, 20, 90),
            child: Text(
              "DHPPi+L",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.left,
            ),
          ),
          ElevatedButton.icon(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                          title: Center(
                            child: const Text(
                              "Will be notified after3 weeks",
                              style: TextStyle(
                                  color: Color(0xff19B9AF),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ));
              },
              icon: Icon(
                Icons.arrow_forward,
                color: Color(0xff19B9AF),
                size: 40,
              ),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 90),
                  backgroundColor: Colors.white,
                  elevation: 30),
              label: Text(
                'Set remainder',
                style: TextStyle(
                    color: Color(0xff19B9AF),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          Container(
            child: Image.asset('assets/dog2.jpeg'),
          )
        ]),
      ),
    );
  }
}

class con2 extends StatefulWidget {
  const con2({super.key});

  @override
  _bluecrossState1 createState() => _bluecrossState1();
}

class _bluecrossState1 extends State<con2> {
  Future<void> _copyToClipboard() async {
    await Clipboard.setData(ClipboardData(text: str));
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      duration: Duration(milliseconds: 800),
      backgroundColor: Color(0xff19B9AF),
      content: Text(
        '               Will be notified after 3 weeks',
        style: TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    ));
  }

  final str = '0300 790 9903';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'REMAINDER',
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
      body: Center(
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.fromLTRB(20, 70, 20, 90),
            child: Text(
              "dHPPi+L first booseter",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.left,
            ),
          ),
          ElevatedButton.icon(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                          title: Center(
                            child: const Text(
                              "Will be notified after3 weeks",
                              style: TextStyle(
                                  color: Color(0xff19B9AF),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ));
              },
              icon: Icon(
                Icons.arrow_forward,
                color: Color(0xff19B9AF),
                size: 40,
              ),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 90),
                  backgroundColor: Colors.white,
                  elevation: 30),
              label: Text(
                'Set remainder',
                style: TextStyle(
                    color: Color(0xff19B9AF),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          Container(
            child: Image.asset('assets/dog2.jpeg'),
          )
        ]),
      ),
    );
  }
}

class con3 extends StatefulWidget {
  const con3({super.key});

  @override
  _bluecrossState3 createState() => _bluecrossState3();
}

class _bluecrossState3 extends State<con3> {
  Future<void> _copyToClipboard() async {
    await Clipboard.setData(ClipboardData(text: str));
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      duration: Duration(milliseconds: 800),
      backgroundColor: Color(0xff19B9AF),
      content: Text(
        '               Will be notified after 3 weeks',
        style: TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    ));
  }

  final str = '0300 790 9903';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'REMAINDER',
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
      body: Center(
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.fromLTRB(20, 70, 20, 90),
            child: Text(
              "dHPPi+L Second booseter",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.left,
            ),
          ),
          ElevatedButton.icon(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                          title: Center(
                            child: const Text(
                              "Will be notified after3 weeks",
                              style: TextStyle(
                                  color: Color(0xff19B9AF),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ));
              },
              icon: Icon(
                Icons.arrow_forward,
                color: Color(0xff19B9AF),
                size: 40,
              ),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 90),
                  backgroundColor: Colors.white,
                  elevation: 30),
              label: Text(
                'Set remainder',
                style: TextStyle(
                    color: Color(0xff19B9AF),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          Container(
            child: Image.asset('assets/dog2.jpeg'),
          )
        ]),
      ),
    );
  }
}

class con4 extends StatefulWidget {
  const con4({super.key});

  @override
  _bluecrossState4 createState() => _bluecrossState4();
}

class _bluecrossState4 extends State<con4> {
  Future<void> _copyToClipboard() async {
    await Clipboard.setData(ClipboardData(text: str));
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      duration: Duration(milliseconds: 800),
      backgroundColor: Color(0xff19B9AF),
      content: Text(
        '               Will be notified after 3 weeks',
        style: TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    ));
  }

  final str = '0300 790 9903';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'REMAINDER',
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
      body: Center(
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            margin: EdgeInsets.fromLTRB(20, 70, 20, 90),
            child: Text(
              "Rabies booster",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.left,
            ),
          ),
          ElevatedButton.icon(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                          title: Center(
                            child: const Text(
                              "Will be notified after3 weeks",
                              style: TextStyle(
                                  color: Color(0xff19B9AF),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ));
              },
              icon: Icon(
                Icons.arrow_forward,
                color: Color(0xff19B9AF),
                size: 40,
              ),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 90),
                  backgroundColor: Colors.white,
                  elevation: 30),
              label: Text(
                'Set remainder',
                style: TextStyle(
                    color: Color(0xff19B9AF),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          Container(
            child: Image.asset('assets/dog2.jpeg'),
          )
        ]),
      ),
    );
  }
}
