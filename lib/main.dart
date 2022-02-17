import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizlzer_app/question.dart';
import 'package:quizlzer_app/quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "QUIZMANIA",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        quizBrain.checkAnswer(true);
                      });
                    },
                    color: Colors.green,
                    child: Text(
                      "True",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.yellowAccent,
                      ),
                    ),

                  ),
                ),
              ),
              Container(
                width: 150,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: FlatButton(
                    onPressed: (){
                      setState(() {
                        quizBrain.checkAnswer(false);
                      });
                    },
                    color: Colors.red,
                    child: Text(
                      "False",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.yellowAccent
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: quizBrain.scoreKeeper,
          ),
        )
      ],
    );
  }
}

