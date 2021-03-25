import 'package:flutter/widgets.dart';

class QuestionAndAnswerModel extends ChangeNotifier {
  List<Map<String, Object>> questions = [
    {
      'question': 'What is the synonym of Mendacity?',
      'answers': ['truthfulness', 'daring', 'falsehood', 'enemy'],
    },
    {
      'question': 'What is the synonym of Culpable?',
      'answers': ['gay', 'guilty', 'falsehood', 'enemy'],
    },
    {
      'question': 'What is the synonym of Rapacious?',
      'answers': ['guilty', 'daring', 'falsehood', 'greedy'],
    },
  ];
  int counter = 0;

  String answerChecking = 'Click the accurate button for correct answer!';

  void incrementCounter() {
    counter++;
    notifyListeners();

    if (counter > 2) {
      counter = 0;
    }
    checkAnswer();
  }

  void checkAnswer() {
    if (counter == 0) {
      answerChecking = 'Synonym of Rapacious is Greedy.';
    } else if (counter == 1) {
      answerChecking = 'Synonym of Mendacity is Falsehood.';
    } else if (counter == 2) {
      answerChecking = 'Synonym of Culpable is Guilty.';
    } else {
      answerChecking = 'Click the accurate button for correct answer!';
    }
  }
}
