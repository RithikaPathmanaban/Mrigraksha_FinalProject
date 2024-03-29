import 'package:flutter/material.dart';

class Pittafood extends StatefulWidget {
  const Pittafood({super.key});

  @override
  State<Pittafood> createState() => _PittafoodState();
}

class _PittafoodState extends State<Pittafood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'Food for Pitta dogs',
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
          child: Column(children: [
            SizedBox(
              height: 2,
            ),
            Container(
              height: 250,
              margin: EdgeInsets.fromLTRB(10, 10, 40, 0.1),
              child: Image.asset('assets/food_recommendations/pittaeats.png'),
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
                'As Pitta dogs tend to run warm, avoid foods that provoke warmth. They do well with cooling foods including meats such as duck, and chicken breasts; dairy products such as cottage cheese, and even tofu.  Fresh pureed veggies such as leafy greens are beneficial as well.',
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
                'The most common herbs and spices for pitta dog are cumin and coriander powders',
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
            SizedBox(
              height: 0.1,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 2, 20, 20),
              child: Text(
                'Needs regular meal times,no touching food bowls,eats with purpose, no sharing bones,etc. Can digest anything',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
