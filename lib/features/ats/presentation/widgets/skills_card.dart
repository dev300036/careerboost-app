import 'package:flutter/material.dart';

import '../../../../app/theme/app_text_styles.dart';

class SkillsCard extends StatelessWidget {
  final List<String> skills;
  final bool missing;

  const SkillsCard({
    super.key,
    required this.skills,
    this.missing = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            missing ? "Missing Skills" : "Skills Found",
            style: AppTextStyles.heading3,
          ),

          const SizedBox(height: 18),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: skills.map((skill) {
              return Chip(
                avatar: Icon(
                  missing ? Icons.close : Icons.check,
                  color: Colors.white,
                  size: 18,
                ),
                backgroundColor:
                    missing ? Colors.red : Colors.green,
                label: Text(
                  skill,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}