import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
           const  Text('You have answered X questions of Y correctly'),
           const Text('Answered questions container'),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz'),)
          ],
        ),
      ),
    );
  }
}
