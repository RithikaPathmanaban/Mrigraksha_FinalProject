import 'package:flutter/material.dart';

class Vatafood extends StatefulWidget {
  const Vatafood({super.key});

  @override
  State<Vatafood> createState() => _VatafoodState();
}

class _VatafoodState extends State<Vatafood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              'Food for vata dogs',
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
            Container(
              height: 200,
              child: Image.asset('assets/food_recommendations/vataeats.png'),
              margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              color: Color(0xff19B9AF),
              child: Text(
                'Diet for your Vata dog',
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
                'Vata pets run cool and dry and should avoid beans, cauliflower, broccoli, peppers, and potatoes. Feed them warming foods such as beef, along with washed and pureed carrots and squashes although they can be quickly blanched then pureed for enhanced digestion. Avoid ghee as it is hard for animals to digest and can lead to pancreatitis. (Use fish oil instead.)  For pets experiencing digestive issues, they can be fed the Ayurvedic dish “kitchari” made with white basmati rice and mung beans.  Spices can include black pepper, cumin and coriander, with a slight bit of hing for Vata dogs.',
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
                'The most common herbs and spices for vata dog are dry or fresh ginger.',
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
                'Quick, fast, sensitive, digestion, nervous eater, needs calm to eat, will leave food half eaten or on floor',
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
