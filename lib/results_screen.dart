import 'package:flutter/material.dart';

import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSumarryData() {
    List<Map<String, Object>> summaryData = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summaryData.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You have completed the quiz!"),
            const SizedBox(height: 30),
            const Text("Your score is 5/5"),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: const Text("Restart Quiz"),
            )
          ],
        ),
      ),
    );
  }
}
