import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: data['user_answer'] == data['correct_answer']
                          ? const Color(0xFF62B2F4)
                          : const Color(0xFFE871EE),
                      shape: BoxShape.circle,
                    ),
                    child:
                        Text(((data['question_index'] as int) + 1).toString()),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 30, top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            (data['question']).toString(),
                            style: GoogleFonts.lato(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            (data['correct_answer']).toString(),
                            style: const TextStyle(
                              color: Color(0xFF85F98B),
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            (data['user_answer']).toString(),
                            style: data['user_answer'] == data['correct_answer']
                                ? const TextStyle(color: Color(0xFF85F98B))
                                : const TextStyle(
                                    color: Color.fromARGB(255, 249, 133, 189)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
