import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHendler;
  // ignore: prefer_const_constructors_in_immutables
  Answer(this.selectHendler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: SizedBox(
          width: 16.0,
          height: 50.0,
          child: ElevatedButton(
            onPressed: selectHendler,
            child: Text(answerText),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.only(top: 10), backgroundColor: Colors.white,
              side: BorderSide(
                color: Colors.white,
                width: 1,
              ),
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontStyle: FontStyle.normal),
            ),
          ),
        ));
  }
}
