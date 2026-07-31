import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class StorageService {
  StorageService._();

  static final StorageService instance = StorageService._();

  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String> uploadResume(File file) async {
    final user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      throw Exception("User not logged in");
    }

    final fileName = DateTime.now().millisecondsSinceEpoch.toString();

    final ref = _storage
        .ref()
        .child("resumes")
        .child(user.uid)
        .child("$fileName.pdf");

    final uploadTask = await ref.putFile(file);

    return await uploadTask.ref.getDownloadURL();
  }
}