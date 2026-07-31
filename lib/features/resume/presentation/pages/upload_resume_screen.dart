import 'dart:io';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:careerboost/core/services/storage_service.dart';

import '../widgets/upload_box.dart';


class UploadResumeScreen extends StatefulWidget {
  const UploadResumeScreen({super.key});

  @override
  State<UploadResumeScreen> createState() => _UploadResumeScreenState();
}

class _UploadResumeScreenState extends State<UploadResumeScreen> {
  XFile? selectedResume;

  Future<void> pickResume() async {
    const XTypeGroup pdfType = XTypeGroup(
      label: 'PDF',
      extensions: ['pdf'],
    );

    final XFile? file = await openFile(
      acceptedTypeGroups: [pdfType],
    );

    if (file != null) {
      final size = File(file.path).lengthSync();

      if (size > 10 * 1024 * 1024) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              "Resume size should be less than 10 MB",
            ),
          ),
        );
        return;
      }

      setState(() {
        selectedResume = file;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upload Resume"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            UploadBox(
              onTap: pickResume,
            ),

            const SizedBox(height: 25),
                        if (selectedResume != null) ...[
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 15,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.picture_as_pdf,
                      color: Colors.red,
                      size: 40,
                    ),

                    const SizedBox(width: 15),

                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            selectedResume!.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Text(
                            selectedResume!.path,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 12,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Text(
                            "Size: ${(File(selectedResume!.path).lengthSync() / 1024).toStringAsFixed(2)} KB",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),

                    IconButton(
                      onPressed: () {
                        setState(() {
                          selectedResume = null;
                        });
                      },
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton.icon(
                  onPressed: () async {
                    if (selectedResume == null) return;

                    try {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Uploading Resume..."),
                        ),
                      );

                      final downloadUrl =
                          await StorageService.instance.uploadResume(
                        File(selectedResume!.path),
                      );

                      if (!context.mounted) return;

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Resume uploaded successfully!"),
                        ),
                      );

                      debugPrint(downloadUrl);
                    } catch (e) {
                      if (!context.mounted) return;

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Upload Failed: $e"),
                        ),
                      );
                    }
                  },
                  icon: const Icon(Icons.cloud_upload),
                  label: const Text(
                    "Upload Resume",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}