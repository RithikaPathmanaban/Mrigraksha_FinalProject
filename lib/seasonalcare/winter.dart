import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:math' as math;

import 'package:mrigrakksha/Adopt/adobtme.dart';

class winter extends StatelessWidget {
  winter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'WINTER',
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
                'Winter care tips for dogs',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'It\'s cold outside keep your dog warm this winter',
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
        image: AssetImage('assets/seasons/winter.png'),
      ),
    );
  }

  Container _finalButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 40),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WinterPage(),
              ));
        },
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

class WinterPage extends StatelessWidget {
  const WinterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Center(
              child: Text(
                'WINTER',
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
            ))),

        // appBar: AppBar(
        //   backgroundColor: Colors.black,
        // ),
        // backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Column(children: [
          // Container(
          //   padding: EdgeInsets.only(top: 50),
          //   child: Center(
          //     child: Container(
          //       padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
          //       color: Colors.blueGrey,
          //       child: Text(
          //         'Winter',
          //         style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 25,
          //             fontWeight: FontWeight.bold),
          //       ),
          //     ),
          // ),
          // ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Center(
              child: Image.asset(
                "assets/seasons/rainy.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text(
              '    Whether your dog loves to frolic outside or cuddle up against you, when the temperature drops, you should be prepared to protect them. It’s a time when our beloved pets need a little extra care, and here is what you can do for them.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 3)),
          ClickyButton(
            child: Text(
              'What to do?',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => HomePage())));
            },
          ),
        ]
                // body: Column(),
                )));
  }
}

class ClickyButton extends StatefulWidget {
  final Duration _duration = const Duration(milliseconds: 70);
  final Widget child;
  final MaterialColor color;
  final GestureTapCallback onPressed;

  const ClickyButton({
    Key? key,
    required this.child,
    this.color = Colors.teal,
    required this.onPressed,
  })  : assert(onPressed != null),
        assert(child != null),
        super(key: key);

  @override
  _ClickyButtonState createState() => _ClickyButtonState();
}

class _ClickyButtonState extends State<ClickyButton> {
  double _faceLeft = 20.0;
  double _faceTop = 0.0;
  double _sideWidth = 20.0;
  double _bottomHeight = 20.0;
  final Curve _curve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    // var math;
    return Container(
      width: 220.0,
      height: 80.0,
      child: GestureDetector(
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Transform(
                origin: const Offset(20, 0),
                transform: Matrix4.skewY(-0.79),
                child: AnimatedContainer(
                  duration: widget._duration,
                  curve: _curve,
                  width: _sideWidth,
                  height: 60.0,
                  color: widget.color[800],
                ),
              ),
              top: 0.2,
            ),
            Positioned(
              child: Transform(
                transform: Matrix4.skewX(-0.8),
                child: Transform(
                  origin: const Offset(100, 10),
                  transform: Matrix4.rotationZ(math.pi),
                  child: AnimatedContainer(
                    duration: widget._duration,
                    curve: _curve,
                    width: 200.0,
                    height: _bottomHeight,
                    color: widget.color[800],
                  ),
                ),
              ),
              top: 60.0,
              left: 20.1,
            ),
            AnimatedPositioned(
              duration: widget._duration,
              curve: _curve,
              child: Container(
                alignment: Alignment.center,
                width: 200.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: widget.color,
                  border: Border.all(color: widget.color, width: 1),
                ),
                child: widget.child,
              ),
              left: _faceLeft,
              top: _faceTop,
            ),
          ],
        ),
        onTapDown: _pressed,
        onTapUp: _unPressedOnTapUp,
        onTapCancel: _unPressed,
      ),
    );
  }

  void _pressed(_) {
    setState(() {
      _faceLeft = 0.0;
      _faceTop = 20.0;
      _sideWidth = 0.0;
      _bottomHeight = 0.0;
    });
    widget.onPressed();
  }

  void _unPressedOnTapUp(_) => _unPressed();

  void _unPressed() {
    setState(() {
      _faceLeft = 20.0;
      _faceTop = 0.0;
      _sideWidth = 20.0;
      _bottomHeight = 20.0;
    });
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFECFC),

      // appBar: AppBar(
      // 	title: Text("GFG Slider"),
      // ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                //  Color(0xffA1DDFF),
                // child: Text('swipe next->'),
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                      image: AssetImage('assets/seasons/petparent/1.jpg'),
                      // NetworkImage(
                      //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1u3ih6pWMgxpHDyhaUPEiCbppErjjxlfzJA&usqp=CAU"),
                      fit: BoxFit.contain),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/petparent/2.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/petparent/3.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/petparent/4.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/petparent/5.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/petparent/6.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/petparent/7.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/petparent/8.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/petparent/9.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                  // color,
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFFD66D)),
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => winternext())));
                }),
                // child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/seasons/skincare/1.jpg'),
                    FittedBox(
                      fit: BoxFit.fill,
                    ),
                  ],
                  // ),
                ),
              ))
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 900,
              enlargeCenterPage: false,
              autoPlay: false,

              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              // enablfiniteScroll: true,
              enableInfiniteScroll: false,

              viewportFraction: 1,
            ),
          ),
        ],
      ),
      // ],
      // ),
    );
    // );
  }
}

class winternext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFD66D),

      // appBar: AppBar(
      // 	title: Text("GFG Slider"),
      // ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              // Container(
              //   //  Color(0xffA1DDFF),
              //   // child: Text('swipe next->'),
              //   margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8.0),
              //     image: DecorationImage(
              //         image: AssetImage('assets/seasons/skincare/1.jpg'),
              //         // NetworkImage(
              //         //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1u3ih6pWMgxpHDyhaUPEiCbppErjjxlfzJA&usqp=CAU"),
              //         fit: BoxFit.contain),
              //   ),
              // ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/skincare/2.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/skincare/3.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/skincare/4.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/skincare/5.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: Colors.green,
                  //       offset: const Offset(
                  //         5.0,
                  //         5.0,
                  //       ))
                  // ],
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/skincare/6.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/skincare/7.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/skincare/8.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              // Container(
              //   margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8.0),
              //     image: DecorationImage(
              //       image: AssetImage('assets/seasons/petparent/9.jpg'),
              //       fit: BoxFit.contain,
              //     ),
              //   ),
              // ),
              Container(
                  // color,
                  // color: Color(0xffFDAB01),
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFDAB01)),
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => grooming())));
                }),
                // child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/seasons/grooming/1.jpg'),
                    FittedBox(
                      fit: BoxFit.fill,
                    ),
                  ],
                  // ),
                ),
              ))
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 900,
              enlargeCenterPage: false,
              autoPlay: false,

              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              // enablfiniteScroll: true,
              enableInfiniteScroll: false,

              viewportFraction: 1,
            ),
          ),
        ],
      ),
      // ],
      // ),
    );
    // );
  }
}

class grooming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFD66D),

      // appBar: AppBar(
      // 	title: Text("GFG Slider"),
      // ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                //  Color(0xffA1DDFF),
                // child: Text('swipe next->'),
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                      image: AssetImage('assets/seasons/grooming/2.jpg'),
                      // NetworkImage(
                      //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1u3ih6pWMgxpHDyhaUPEiCbppErjjxlfzJA&usqp=CAU"),
                      fit: BoxFit.contain),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/grooming/2.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/grooming/3.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/grooming/4.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/grooming/5.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: Colors.green,
                  //       offset: const Offset(
                  //         5.0,
                  //         5.0,
                  //       ))
                  // ],
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/seasons/grooming/6.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              Container(
                  // color,
                  // color: Color(0xffFDAB01),
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFDAB01)),
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => winternext())));
                }),
                // child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/seasons/grooming/1.jpg'),
                    FittedBox(
                      fit: BoxFit.fill,
                    ),
                  ],
                  // ),
                ),
              ))
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 900,
              enlargeCenterPage: false,
              autoPlay: false,

              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              // enablfiniteScroll: true,
              enableInfiniteScroll: false,

              viewportFraction: 1,
            ),
          ),
        ],
      ),
      // ],
      // ),
    );
    // );
  }
}
