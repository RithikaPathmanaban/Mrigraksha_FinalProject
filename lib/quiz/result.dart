import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);

  final int resultScore;
  final VoidCallback resetHandeler;

  const Result(this.resultScore, this.resetHandeler, {super.key});

  String get resuldPhrase {
    String resultText;
    if (resultScore >= 40) {
      resultText =
          "Your dog is healthy! 😍\n\n\nYour dog seems to be alright. \nSigns are not bad, and there is nothing to worry about. \n\nStill, if you want to be 100% sure, go for his check-up!";
    } else {
      resultText =
          "Your dog is not healthy!😥\n\n\nYour dog doesn't seem to be in good condition. \nSigns show that your dog might be in urgent need of a check-up and medical care. \n\nTake your dog to the VET.";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            resuldPhrase,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          Center(
            child: Text(
              "Your Dog Health Score is: $resultScore",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Center(
              child: ElevatedButton(
                  onPressed: resetHandeler,
                  child: Text('Reset quiz'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
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
    );
  }
}
