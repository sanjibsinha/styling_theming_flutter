import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/button_decoration_widget.dart';
import '../controllers/check_answer_widget.dart';
import '../controllers/question_widget.dart';
import '../models/question_and_answer_model.dart';

class StylingThemingFirstView extends StatelessWidget {
  const StylingThemingFirstView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('New Quiz App'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  'Start the Quiz, test your English vocabulary:'
                  ' Find the right Synonym!'
                  ' Click any button and check your answer!',
                  style: TextStyle(
                    fontSize: 20.0,
                    //fontWeight: FontWeight.bold,
                    fontFamily: 'Anton',
                  ),
                ),
                SizedBox(height: 20.0),
                QuestionWidget(
                  /// static method Provider.of<T>(context), which will behave similarly to watch
                  ///
                  questions:
                      Provider.of<QuestionAndAnswerModel>(context).questions,
                  // questions: context.watch<QuestionAndAnswerModel>().questions,
                  counter: context.watch<QuestionAndAnswerModel>().counter,
                ),
                ...(context.watch<QuestionAndAnswerModel>().questions[context
                        .watch<QuestionAndAnswerModel>()
                        .counter]['answers'] as List<String>)
                    .map(
                      (answer) => ButtonDEcorationWidget(
                        answer: answer,
                      ),
                    )
                    .toList(),
                CheckAnswerWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
