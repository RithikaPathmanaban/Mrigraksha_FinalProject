import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class bathing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // 	title: Text("GFG Slider"),
      // ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                //  Color(0xffA1DDFF),
                // child: Text('swipe next->'),

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: AssetImage('assets/generalcare/bathing/p1.jpg'),
                        // NetworkImage(
                        //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1u3ih6pWMgxpHDyhaUPEiCbppErjjxlfzJA&usqp=CAU"),
                        fit: BoxFit.contain),
                    color: Color(0xffFE9C53)),
              ),

              //2nd Image of Slider
              Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('assets/generalcare/bathing/p2.jpg'),
                        fit: BoxFit.contain,
                      ),
                      color: Color(0xff78B1FE))),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/generalcare/bathing/p3.jpg'),
                      fit: BoxFit.contain,
                    ),
                    color: Color(0xffFE9C53)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/generalcare/bathing/p4.jpg'),
                      fit: BoxFit.contain,
                    ),
                    color: Color(0xffFFE584)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('assets/generalcare/bathing/p5.jpg'),
                      fit: BoxFit.contain,
                    ),
                    color: Color(0xffB8D873)),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('assets/generalcare/bathing/p6.jpg'),
                        fit: BoxFit.contain,
                      ),
                      color: Color(0xffFE9C53))),
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
