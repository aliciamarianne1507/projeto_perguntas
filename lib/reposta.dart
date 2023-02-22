import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String buttonText;

  Resposta(this.buttonText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: (ElevatedButton(onPressed: null, child: Text(buttonText))),
    );
  }
}
