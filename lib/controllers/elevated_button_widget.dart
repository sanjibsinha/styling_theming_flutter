import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/question_and_answer_model.dart';

class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget({Key key, this.answer}) : super(key: key);
  final String answer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      /// when you pass false to the listen parameter
      /// like Provider.of<T>(context,listen: false) it will behave similar to read
      ///
      onPressed: () =>
          // context.read<QuestionAndAnswerModel>().incrementCounter(),
          Provider.of<QuestionAndAnswerModel>(context, listen: false)
              .incrementCounter(),
      child: Text(
        answer,
        style: TextStyle(
          fontSize: 25.0,
          color: Theme.of(context).primaryColorLight,
        ),
      ),
    );
  }
}
