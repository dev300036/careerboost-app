import 'package:flutter/material.dart';

import '../../../../app/theme/app_text_styles.dart';

class ReadinessCard extends StatelessWidget {
  const ReadinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xff2563EB),
            Color(0xff06B6D4),
          ],
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withValues(alpha: 0.25),
            blurRadius: 25,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.emoji_events,
            color: Colors.white,
            size: 34,
          ),

          const SizedBox(height: 18),

          Text(
            "Placement Readiness",
            style: AppTextStyles.body.copyWith(
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            "85%",
            style: AppTextStyles.heading1.copyWith(
              color: Colors.white,
              fontSize: 42,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            "Excellent Progress 🚀",
            style: AppTextStyles.bodySmall.copyWith(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}