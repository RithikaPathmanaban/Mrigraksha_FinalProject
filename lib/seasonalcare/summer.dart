import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class summer extends StatefulWidget {
  summer({Key? key}) : super(key: key);

  @override
  _BannerPageState createState() => _BannerPageState();
}

class _BannerPageState extends State<summer> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'SUMMER',
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
            bottomLeft: Radius.circular(150),
          ))),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 547,
                    alignment: Alignment.bottomCenter,
                    child: _bannerCard(),
                  ),
                ),
                Center(child: _imgBanner()),
              ],
            ),
            SizedBox(height: 30)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _finalButton(context),
    );
  }

  Widget _bannerCard() => Container(
        height: 300,
        width: 340,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Summmer care tips for dogs',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Summer  Summer Go Away-Little Furry Has No Where To Stay!!',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      );

  Widget _imgBanner() {
    return Container(
      height: 400,
      child: Image(
        image: AssetImage('assets/seasons/summer.png'),
      ),
    );
  }

  Container _finalButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 40),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 34),
          ),
          backgroundColor: MaterialStateProperty.all(Color(0xff19B9AF)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        onPressed: () {
          // Navigator.pushNamed(context, '/homePage');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => summerpage()),
          );
        },
        child: Text(
          "Let's Start",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class summerpage extends StatefulWidget {
  const summerpage({super.key});

  @override
  State<summerpage> createState() => _summerpageState();
}

class _summerpageState extends State<summerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 231, 231),
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Center(
              child: Text(
                'SUMMER',
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
              bottomLeft: Radius.circular(150),
            ))),

        //  back Colors.blueGrey,
        // appBar: AppBar(
        //   backgroundColor: Colors.black,
        // ),

        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Center(
              child: Image.asset(
                "assets/seasons/summer.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text(
              'Whether your dog loves to frolic outside or cuddle up against you, when the temperature drops, you should be prepared to protect them. It’s a time when our beloved pets need a little extra care, and here is what you can do for them.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 3)),
          Container(
            padding: EdgeInsets.zero,
            child: ElevatedButton(
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
                'Spring',
                style: TextStyle(fontSize: 30),
              ),
            ),

            //color: Colors.blueGrey,
            //     child: Text(
            //       'What to do?',
            //       textAlign: TextAlign.left,
            //       style: TextStyle(
            //         color: Colors.black,
            //         fontSize: 17,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            //   Container(
            //     margin: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            //     padding: EdgeInsets.all(10),
            //     color: Colors.grey,
            //     child: Text(
            //       '1. Provide plenty of water and shade\n2. Never leave your pet in the car\n3.Don\'t shave your pet\n4. Mind your walking hours\n4.Keep your dog\'s paws cool\n5.Keep your pets away from fireworks\6.Nutrient-Rich Dog Food',
            //       textAlign: TextAlign.left,
            //       style: TextStyle(
            //           fontSize: 16,
            //           fontStyle: FontStyle.italic,
            //           color: Colors.black),
            //     ),
            //   ),
            // ]
            //         // body: Column(),
            //         )
            //     // )
          )
        ])));
  }
}
