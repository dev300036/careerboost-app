import 'package:flutter/material.dart';

import '../../../../app/theme/app_text_styles.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
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
            "Recent Activity",
            style: AppTextStyles.heading3,
          ),

          const SizedBox(height: 18),

          const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              child: Icon(Icons.description),
            ),
            title: Text("Resume Uploaded"),
            subtitle: Text("2 minutes ago"),
          ),

          const Divider(),

          const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              child: Icon(Icons.analytics),
            ),
            title: Text("ATS Score Generated"),
            subtitle: Text("Yesterday"),
          ),
        ],
      ),
    );
  }
}