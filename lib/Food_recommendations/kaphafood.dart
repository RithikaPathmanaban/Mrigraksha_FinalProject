import 'package:flutter/material.dart';

class Kaphafood extends StatefulWidget {
  const Kaphafood({super.key});

  @override
  State<Kaphafood> createState() => _KaphafoodState();
}

class _KaphafoodState extends State<Kaphafood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'Food for Kapha dogs',
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
        child: Column(children: [
          Container(
            height: 120,
            child: Image.asset('assets/food_recommendations/Dogeats.png'),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            color: Color(0xff19B9AF),
            child: Text(
              'Diet for your Kapha dog',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 2, 20, 20),
            child: Text(
              'For the heavy-set Kapha pet, the diet should contain more wholesome foods such as fresh veggies. Avoid starch, grains and fat, and additives such as molasses and corn syrup.  Veggies should include carrots, squash and pumpkin and should always be washed, raw and pureed. ',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Divider(
              height: 0.1,
              color: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            color: Color(0xff19B9AF),
            child: Text(
              'Beneficial Herbs ',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 0.1,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 2, 20, 20),
            child: Text(
              'The most common herbs and spices for kapha dog is turmeric.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Divider(
              height: 0.1,
              color: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            color: Color(0xff19B9AF),
            child: Text(
              'Eating habits',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 2, 20, 20),
            child: Text(
              'Easily skip meals,will eat sometimes slowly,motivated by food generally.Follows food',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ]),
      ),
    );
  }
}
