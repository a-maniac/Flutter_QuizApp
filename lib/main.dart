import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  final question = const [
    {
      'questionText':
          'Which of the following personalities gave ‘The Laws of Heredity’?   ',
      'answeres': [{'text':
        '(A) Robert Hook', 'score':'1'},
        {'text':
        '(B) G.J. Mendel',
        'score':1 // answere
        },
        {'text':
        '(C) Charles Darwin',
        'score':0,
    },
    {'text':
        '(D) William Harvey','score':0
    },],
    },
    {
      'questionText': 'Geet Govind is a famous creation of ……',
      'answeres': [
        {'text':'(A) Bana Bhatt','score':0},
        {'text':'(B) Kalidas','score':0},
        {'text':'(C) Jayadev','score':1}, //answere
        {'text':'(D) Bharat Muni','score':0},
      ],
    },
    {
      'questionText': 'World Trade Organization came into existence in……',
      'answeres': [{'text':'(A) 1992','score':0}, {'text':'(B) 1993','score':0}, {'text':'(C) 1994','scoere':0}, {'text':'(D) 1995','score':1}], //answere D
    },
    {
      'questionText':
          'Which of the following is the largest and the deepest ocean of the world?',
      'answeres': [
        {'text':'(A) Arctic','score':0},

        {'text':'(B) Atlantic','score':0},

        {'text':'(C) Pacific','score':1}, //answere

        {'text':'(D) Indian','score':0},
      ],
    },
    {
      'questionText':
          'What is the height of Siachen Glacier at eastern Karakoram range in the Himalaya Mountains?',
      'answeres': [
        {'text':'(A) 5400 Metre','score':1}, //answer
        {'text':'(B) 6400 Metre','score':0},
        {'text':'(C) 5600 Metre','score':0},
        {'text':'(D) 8500 Metre','score':0},
      ],
    },
    {
      'questionText':
          'Which schemes launched for Bhim app user by PM Narendra Modi on Apr 14, 2015, Ambedkar Jayanti?',
      'answeres': [
        {'text':'(A) BHIM Referral Bonus Scheme and BHIM Merchant Cashback Scheme','score':1}, //answer
        {'text':'(B) Jio Money','score':0},
        {'text':'(C) M-Paisa','score':0},
       {'text':'(D) Real Money','score':0},
      ],
    },
    {
      'questionText': 'Mount Etna is a famous volcano located in ….',
      'answeres': [
       {'text': '(A) Argentina','score':0},
        {'text':'(B) Italy','score':1}, //answer
        {'text':'(C) Mexico','score':0},
        {'text':'(D) Philipines','score':0},
      ],
    },
    {
      'questionText': 'Reserve Bank of India is headquartered at…..',
      'answeres': [
        {'text':'(A) Kolkata','score':0},
        {'text':'(B) New Delhi','score':0},
        {'text':'(C) Mumbai','score':1}, //answer
        {'text':'(D) Chennai','score':0},
      ],
    },
    {
      'questionText': 'When Earth Day observed world wide in 2017?',
      'answeres': [
        {'text':'(A)  April 22, 2017','score':1}, //answer
        {'text':'(B)  April 24, 2017','score':0},
        {'text':'(C)  April 25, 2017','score':0},
        {'text':'(D)  April 27, 2017','score':0},
      ],
    },
    {
      'questionText':
          'This country is known as the ‘Sugar Bowl of the World’, Identify it from the given options.',
      'answeres': [
        {'text':'(A) Brazil','score':0},
        {'text':'(B) Cuba','score':1}, //answer
        {'text':'(C) Mexico','score':0},
        {'text':'(D) Algeria','score':0},
      ],
    },
  ];
  var totalScore=0;
  void answereQuestion(int score) {

    totalScore+=score;

    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
    if (questionIndex < question.length) {
      print('We have more question');
    } else {
      print('No more question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuizApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizAPP'),
        ),
        body: questionIndex < question.length
            ? Quiz(answerQuestion: answereQuestion,questionIndex: questionIndex,questions: question,)
            : Result(totalScore),
      ),
    );
  }
}
