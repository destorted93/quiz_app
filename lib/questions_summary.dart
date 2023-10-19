import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  Color getAnswerColor(Map<String, Object> data) {
    if (data['correct_answer'] == data['user_answer']) {
      return const Color.fromARGB(255, 95, 153, 97);
    }
    return const Color.fromARGB(255, 247, 107, 97);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: getAnswerColor(data),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(
                            data['user_answer'] as String,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 255, 208, 164)),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 95, 153, 97)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
