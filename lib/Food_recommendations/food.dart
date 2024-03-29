import 'package:flutter/material.dart';
import 'package:mrigrakksha/Food_recommendations/button.dart';

class Foodrecommendations extends StatefulWidget {
  const Foodrecommendations({super.key});

  @override
  State<Foodrecommendations> createState() => _FoodrecommendationsState();
}

class _FoodrecommendationsState extends State<Foodrecommendations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text(
              "Food recommendations",
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
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
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
              'Food recommendations for dogs',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'There is no love sincerer than the love of food.',
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
      image: AssetImage('assets/food.png'),
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
          MaterialPageRoute(builder: (context) => button()),
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
