import 'package:flutter/material.dart';
import 'questionnaire_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AI Interior Design Copilot')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the AI Interior Design Copilot!\n'
              'Click the button below to start designing your dream space.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuestionnaireScreen(),
                  ),
                );
              },
              child: const Text('Start Designing'),
            ),
          ],
        ),
      ),
    );
  }
}
