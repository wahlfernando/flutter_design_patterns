import 'package:flutter/material.dart';

class CustomComponente {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback onPressed;

  CustomComponente._({
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.onPressed,
  });

  //build para contrução do componente, que no caso aqui é o botão, com váriso parametros
  factory CustomComponente.build({
    required String text,
    required VoidCallback onPressed,
    Color? textColor,
    Color? buttonColor,
  }) {
    return CustomComponente._(
      text: text,
      textColor: textColor ?? Colors.white,
      buttonColor: buttonColor ?? Colors.blue,
      onPressed: onPressed,
    );
  }

  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
