import 'package:flutter/material.dart';
import 'elevated_button_widget.dart';

class ButtonDEcorationWidget extends StatelessWidget {
  const ButtonDEcorationWidget({
    Key key,
    this.answer,
  }) : super(key: key);

  final String answer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 1,
            horizontal: 1,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              /// here primarySwatch will work
              ///
              color: Theme.of(context).primaryColorDark,
              width: 5,
            ),
          ),

          /// each container has an elevated button that has border around
          /// now, the padding between the border and the button
          padding: EdgeInsets.all(8),
          child: ElevatedButtonWidget(
            answer: answer,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
