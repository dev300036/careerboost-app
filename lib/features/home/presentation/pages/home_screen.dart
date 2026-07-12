import 'package:flutter/material.dart';

import '../widgets/custom_bottom_nav.dart';
import '../widgets/home_header.dart';
import '../widgets/quick_action_card.dart';
import '../widgets/readiness_card.dart';
import '../widgets/recent_activity.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNav(),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: Column(
            children: [

              const HomeHeader(),

              const SizedBox(height: 25),

              const ReadinessCard(),

              const SizedBox(height: 30),

              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 18,
                mainAxisSpacing: 18,
                childAspectRatio: 1.05,

                children: [

                  QuickActionCard(
                    icon: Icons.upload_file,
                    title: "Upload Resume",
                    color: Colors.blue,
                    onTap: () {},
                  ),

                  QuickActionCard(
                    icon: Icons.analytics,
                    title: "ATS Score",
                    color: Colors.green,
                    onTap: () {},
                  ),

                  QuickActionCard(
                    icon: Icons.mic,
                    title: "Mock Interview",
                    color: Colors.orange,
                    onTap: () {},
                  ),

                  QuickActionCard(
                    icon: Icons.psychology,
                    title: "Skill Gap",
                    color: Colors.purple,
                    onTap: () {},
                  ),
                ],
              ),

              const SizedBox(height: 30),

              const RecentActivity(),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}