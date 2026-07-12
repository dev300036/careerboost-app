import 'package:flutter/material.dart';

import '../../../../app/theme/app_colors.dart';
import '../../../../app/theme/app_text_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xff2563EB),
                Color(0xff06B6D4),
              ],
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),

        const SizedBox(width: 15),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back 👋",
                style: AppTextStyles.bodySmall,
              ),
              const SizedBox(height: 4),
              Text(
                "Dev Prajapati",
                style: AppTextStyles.heading3,
              ),
            ],
          ),
        ),

        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none_rounded),
        ),
      ],
    );
  }
}