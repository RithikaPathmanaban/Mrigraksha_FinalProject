import 'package:flutter/material.dart';
import 'package:mrigrakksha/grid.dart';

class praResult extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);

  final int resultScore;
  final VoidCallback resetHandeler;

  const praResult(this.resultScore, this.resetHandeler, {super.key});

  String get resuldPhrase {
    String resultText;
    if (resultScore >= 30) {
      resultText = "Your dog'\s body type is \"KAPHA!\"";
    } else if (resultScore == 0 && resultScore < 30) {
      resultText = "Your dog'\s body type is \"VATA\"";
    } else {
      resultText = "Your dog'\s body type is \"PITTA!\"";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              resuldPhrase,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: ElevatedButton(
              onPressed: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => gridPage())));
              }),
              child: Text('    Done    '),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                side: BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontStyle: FontStyle.normal),
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Center(
                child: ElevatedButton(
                    onPressed: resetHandeler,
                    child: Text('Reset quiz'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      side: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontStyle: FontStyle.normal),
                    )))
          ],
        ),
      ),
    );
  }
}
