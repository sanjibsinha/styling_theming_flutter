import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/styling_theming_app.dart';

import 'models/question_and_answer_model.dart';

void main() {
  runApp(
    /// Providers are above [StylingThemingApp] instead of inside it,
    /// so that tests can use [StylingThemingApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => QuestionAndAnswerModel()),
      ],
      child: StylingThemingApp(),
    ),
  );
}
