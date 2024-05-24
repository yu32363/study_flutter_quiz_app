import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summarayData});

  final List<Map<String, Object>> summarayData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summarayData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: data['user_answer'] == data['correct_answer']
                        ? Colors.lightBlue.shade100
                        : Colors.purpleAccent.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: const TextStyle(color: Colors.purpleAccent),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: TextStyle(color: Colors.deepPurple.shade100),
                      ),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
