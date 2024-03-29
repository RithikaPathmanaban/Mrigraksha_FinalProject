import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(Quze());

class Quze extends StatefulWidget {
  const Quze({Key? key}) : super(key: key);

  @override
  _QuzeAppState createState() => _QuzeAppState();
}

class _QuzeAppState extends State<Quze> {
  final _questions = const [
    {
      'question': 'Q1:Your dog\'s age?',
      'answers': [
        {'text': 'Adult', 'score': 10},
        {'text': 'Puppy', 'score': 10},
        {'text': 'Young', 'score': 10},
        {'text': 'Old', 'score': 10},
      ]
    },
    {
      'question': 'Q2: Your dog\'s coat is',
      'answers': [
        {'text': 'Rough', 'score': 9},
        {'text': 'Dry', 'score': 9},
        {'text': 'Smooth', 'score': 10},
        {'text': 'Rough & Dry', 'score': 9},
      ]
    },
    {
      'question': 'Q3: Does your dog have odd eating habits?',
      'answers': [
        {'text': 'Yes', 'score': 9},
        {'text': 'Kindof', 'score': 9},
        {'text': 'Iam not sure', 'score': 9},
        {'text': 'NO', 'score': 10},
      ]
    },
    {
      'question': 'Q4: Does your dog drink too much water?',
      'answers': [
        {'text': 'Yes', 'score': 9},
        {'text': 'Sometimes', 'score': 9},
        {'text': 'Rarely', 'score': 10},
        {'text': 'No', 'score': 10},
      ]
    },
    {
      'question': 'Q5: Your dog is',
      'answers': [
        {'text': 'Losing body hair', 'score': -2},
        {'text': 'Having a good amount of body hair', 'score': -1},
        {'text': 'Showing skin problems', 'score': -2},
        {'text': 'No preblems', 'score': 10},
      ]
    },
    {
      'question': 'Q6: Did your dog vomit recently?',
      'answers': [
        {'text': 'Once', 'score': 10},
        {'text': 'Twice', 'score': 9},
        {'text': 'NO', 'score': 10},
        {'text': 'I don\'t know', 'score': 9},
      ]
    },
    {
      'question': 'Q7: Is there a change in your dog\'s toilet habit\'?',
      'answers': [
        {'text': 'It\'s change', 'score': 9},
        {'text': 'A Little Bit', 'score': 9},
        {'text': 'No', 'score': 19},
        {'text': 'I don\'t think so', 'score': 9},
      ]
    },
    {
      'question': 'Q8: What\'s your dog\'s skin status\'?',
      'answers': [
        {'text': 'It\'s itchy', 'score': 9},
        {'text': 'It\'s showing redness', 'score': 9},
        {'text': 'It\'s fine', 'score': 10},
        {'text': 'It seems as it was before', 'score': 10},
      ]
    },
    {
      'question': 'Q9: Your dog\'s teeth\'s status',
      'answers': [
        {'text': 'Bleeding in some parts', 'score': 9},
        {'text': 'Messy and dirty teeth.', 'score': 9},
        {'text': 'White or pale', 'score': 10},
        {'text': 'Looks fine', 'score': 10},
      ]
    },
    {
      'question': 'Q10: Did your dog lose weight?',
      'answers': [
        {'text': 'Too much', 'score': 9},
        {'text': 'No', 'score': 10},
        {'text': ' He gained some weight.', 'score': 10},
        {'text': 'Yes', 'score': 9},
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
        backgroundColor: Color.fromARGB(255, 242, 231, 231),
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Center(
              child: Text(
                'Health Quiz',
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
        // drawer: Drawer(),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          //  children: [
          Container(
              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Color.fromARGB(255, 242, 231, 231),
                child: Image.asset(
                  'assets/quiz.png',
                  fit: BoxFit.contain,
                  height: 300,
                  width: 800,
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: _questionIndex < _questions.length
                ? Quize(
                    answeQuestion: _answeQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions)
                : Result(_totalScore, _resetQuzie),
          ),
        ])),
      ),
    );
  }
}
