import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String buttonText;

  final void Function() whenSelected;

  Resposta(this.buttonText, this.whenSelected);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
            ),
            onPressed: whenSelected,
            child: Text(buttonText)));
  }
}
