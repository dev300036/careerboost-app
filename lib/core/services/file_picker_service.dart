import 'package:file_picker/file_picker.dart';

class FilePickerService {
  FilePickerService._();

  static final FilePickerService instance =
      FilePickerService._();

  Future<PlatformFile?> pickResume() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
      allowMultiple: false,
    );

    if (result == null) return null;

    return result.files.first;
  }
}