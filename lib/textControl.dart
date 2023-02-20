import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback selecthandler;
  final String option;
  TextControl(this.selecthandler, this.option);

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: selecthandler,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber)),
            child: Text(option),
          )
        ],
      )),
    );
  }
}
