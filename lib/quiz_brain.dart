import 'package:flutter/cupertino.dart';
import 'package:quizlzer_app/question.dart';
import 'main.dart';
import 'package:flutter/material.dart';

class QuizBrain{

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question("You can lead a cow down stairs but not up stairs.", false),
    Question("Approximately one quarter of human bones are in the feet.", true),
    //Question("Ahsan did situps in the stairs in uni for his crush.", true),
    Question('A slug\'s blood is green.', false),
    Question('Some cats are actually allergic to humans.', true),
    //Question("Daniyal loves the butt karahi of bovchic", false),
    Question("Buzz Aldrin's mother's maiden name was \"Moon\".", true),
    Question("It is illegal to pee in the ocean in Portugal.", true),
    //Question("Hamza has a 6.2 foot height.", false),
    Question("No piece of square dry paper can be folded in half more than 7 times.", false),
    //Question("Does Daniyal likes to follow vans in the uni.", true),
    Question("In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered to a sacred place.", true),
    Question("The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", false),
    //Question("Hamza and qari sahab are going on a long drive.", true),
    Question("The total surface area of the two human lungs is approximately 70 square metres.", true),
    //Question("Ahsan likes to lay down on the desk in uni.", false),
    Question("The Google was originally called \"Backrub\".", true),
    //Question("Zia loves dairymilk.", true),
    Question("Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", true),
    //Question("Maaz has a good relation with his inam papa.", false),
    Question("Pakistan won the 2009 T20 World Cup.", true),
    Question("End of the Quiz", true),
  ];

  void nextQuestion(){
    if(_questionNumber < _questionBank.length - 1){
      _questionNumber++;
    }
    else{
      scoreKeeper = [];
      _questionNumber = 0;

    }
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }

  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer){
     bool correctAnswer = getCorrectAnswer();
     if(userPickedAnswer == correctAnswer){
       scoreKeeper.add(
           Icon(
             Icons.check,
             color: Colors.green,
           )
       );
     }
     else{
       scoreKeeper.add(
           Icon(
             Icons.close,
             color: Colors.red,
           )
       );
     }
     quizBrain.nextQuestion();
   }


}
