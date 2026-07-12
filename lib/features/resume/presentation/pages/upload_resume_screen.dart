import 'package:flutter/material.dart';

import '../widgets/upload_box.dart';

class UploadResumeScreen extends StatelessWidget {
  const UploadResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upload Resume"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            UploadBox(
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}