import "package:flutter/material.dart";
import "package:quiz_app/answer_button.dart";

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Question 1",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            onTap: () {},
            anserText: "Answer 1",
          ),
          AnswerButton(
            onTap: () {},
            anserText: "Answer 2",
          ),
          AnswerButton(
            onTap: () {},
            anserText: "Answer 3",
          ),
          AnswerButton(
            onTap: () {},
            anserText: "Answer 4",
          ),
        ],
      ),
    );
  }
}
