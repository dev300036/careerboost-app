import 'package:flutter/material.dart';

import '../widgets/improvement_card.dart';
import '../widgets/score_card.dart';
import '../widgets/skills_card.dart';

class AtsScoreScreen extends StatelessWidget {
  const AtsScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ATS Score"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const ScoreCard(
              score: 82,
            ),

            const SizedBox(height: 25),

            const SkillsCard(
              skills: [
                "Flutter",
                "Firebase",
                "Dart",
                "Python",
                "SQL",
              ],
            ),

            const SizedBox(height: 20),

            const SkillsCard(
              missing: true,
              skills: [
                "Docker",
                "REST API",
                "GitHub",
                "CI/CD",
              ],
            ),

            const SizedBox(height: 20),

            const ImprovementCard(
              suggestions: [
                "Add measurable achievements in your projects.",
                "Improve your professional summary.",
                "Include more ATS keywords relevant to Flutter Developer roles.",
                "Add GitHub and LinkedIn profile links.",
                "Mention internships, certifications, and hackathons.",
              ],
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}