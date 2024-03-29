import 'package:flutter/material.dart';
import 'package:mrigrakksha/prakrithi%20identification/prakrithi4.dart';
import '../quiz/quiz.dart';
import '../quiz/result.dart';

void main() => runApp(prakrithi());

class prakrithi extends StatefulWidget {
  const prakrithi({Key? key}) : super(key: key);

  @override
  _QuzeAppState createState() => _QuzeAppState();
}

class _QuzeAppState extends State<prakrithi> {
  // SingleChildScrollView()
  int vata = 0;
  int pita = 0;
  int kapa = 0;
  final _questions = const [
    {
      'question': 'Q1:Which climate will your dog like?',
      'answers': [
        {'text': ' Discomfort in cold weather', 'score': 10},
        {'text': ' Hot and moist', 'score': -10},
        {'text': ' Cold weather', 'score': 0},
      ]
    },
    {
      'question': 'Q2: How will be your dog\'s fur?',
      'answers': [
        {'text': ' Dry skin and dry fur', 'score': 10},
        {'text': ' Soft skin and warm fur', 'score': -10},
        {'text': '  Soft and cold fur', 'score': 0},
      ]
    },
    {
      'question': 'Q3: What about your dog\'s physique?',
      'answers': [
        {'text': 'Dry and light', 'score': 10},
        {'text': ' Medium', 'score': -10},
        {'text': ' Strong and overweight', 'score': 0},
      ]
    },
    {
      'question': 'Q4: How will your dog learn?',
      'answers': [
        {'text': ' Quick learn and quick forget', 'score': 10},
        {'text': ' Learn quickly', 'score': 2},
        {'text': ' Slower to learn but never forget', 'score': 0},
        // {'text': 'No', 'score': 10},
      ]
    },
    {
      'question': 'Q5: What is your dogs behaviour?',
      'answers': [
        {'text': ' Irregular in daily routine', 'score': 10},
        {'text': ' Self confident and aggrressive', 'score': 2},
        {'text': ' Calm,Possessive and loving', 'score': 0},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuzie() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("You have more questions to answer");
    } else {
      print("No more Question");
    }
  }

  void _answeQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Center(
              child: Text(
                "Identify your Dog's Prakriti",
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
            children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Color.fromARGB(255, 242, 231, 231),
                    child: Image.asset(
                      'assets/gen.png',
                      fit: BoxFit.contain,
                      height: 300,
                      width: 300,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(10),
                child: _questionIndex < _questions.length
                    ? Quize(
                        answeQuestion: _answeQuestion,
                        questionIndex: _questionIndex,
                        questions: _questions)
                    : praResult(_totalScore, _resetQuzie),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
