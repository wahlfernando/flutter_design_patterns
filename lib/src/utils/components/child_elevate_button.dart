import 'package:flutter/material.dart';

class ChildElevateButton extends StatelessWidget {
  final String title;
  const ChildElevateButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
    );
  }
}
