import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Brushing extends StatelessWidget {
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
                        image: AssetImage(
                            'assets/generalcare/brushing/images.jpeg'),
                        // NetworkImage(
                        //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1u3ih6pWMgxpHDyhaUPEiCbppErjjxlfzJA&usqp=CAU"),
                        fit: BoxFit.fill),
                    color: Color(0xff5CE1E6)),
              ),

              //2nd Image of Slider
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
