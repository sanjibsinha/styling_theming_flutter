import 'package:flutter/material.dart';
import 'styling_theming_first_view.dart';

class StylingThemingApp extends StatelessWidget {
  const StylingThemingApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Styling Theming App',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: StylingThemingFirstView(),
    );
  }
}
