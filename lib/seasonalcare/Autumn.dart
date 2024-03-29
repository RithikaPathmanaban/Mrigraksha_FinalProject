import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class autumn extends StatefulWidget {
  autumn({Key? key}) : super(key: key);

  @override
  _autumnbannerPageState createState() => _autumnbannerPageState();
}

class _autumnbannerPageState extends State<autumn> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
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
                'Autumn care tips for dogs',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'No spring nor summer beauty hath such grace as I have seen in one autumnal face',
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
        image: AssetImage('assets/seasons/Autumn.png'),
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
          backgroundColor: MaterialStateProperty.all(Colors.black),
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
            MaterialPageRoute(builder: (context) => autumnpage()),
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

class autumnpage extends StatefulWidget {
  const autumnpage({super.key});

  @override
  State<autumnpage> createState() => _autumnpageState();
}

class _autumnpageState extends State<autumnpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.black,
        // ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 50),
            child: Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                color: Colors.blueGrey,
                child: Text(
                  'Autumn',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Center(
              child: Image.asset(
                "assets/seasons/Autumn.png",
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
                  color: Colors.white),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 3)),
          Container(
            padding: EdgeInsets.zero,

            //color: Colors.blueGrey,
            child: Text(
              'What to do?',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            padding: EdgeInsets.all(10),
            color: Colors.grey,
            child: Text(
              '1. Keep Halloween candy away fron pets chocolate especially can be poisonous 2. Let fur grow.Keep grooming,but don\'t brush our the undercoat--they need it ti stay toasty!!.',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            ),
          ),
        ]
                // body: Column(),
                )));
  }
}
