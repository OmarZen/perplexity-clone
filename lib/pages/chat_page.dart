import '../theme/colors.dart';
import '../widgets/side_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/answer_section.dart';
import 'package:flutter/foundation.dart';
import '../widgets/sources_section.dart';

class ChatPage extends StatelessWidget {
  final String question;
  const ChatPage({
    super.key,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          kIsWeb ? const SideBar() : const SizedBox(),
          kIsWeb ? const SizedBox(width: 100) : const SizedBox(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      question,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const SourcesSection(),
                    const SizedBox(height: 24),
                    const AnswerSection(),
                    const SizedBox(height: 24),
                    // create a button to ask a new question or go back to the search page
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.submitButton,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Ask a new question',
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          kIsWeb
              ? const Placeholder(
                  strokeWidth: 0,
                  color: AppColors.background,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
