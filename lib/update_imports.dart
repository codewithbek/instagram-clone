import 'dart:io';

void main() {
  const String oldPackageName = 'flutter_clean_architecture';
  const String newPackageName = 'instagram_clone';

  final Directory directory = Directory.current;

  print('🔍 Scanning directory: ${directory.path}');

  directory
      .listSync(recursive: true)
      .whereType<File>()
      .where((File file) => file.path.endsWith('.dart'))
      .forEach((File file) {
    final String content = file.readAsStringSync();
    if (content.contains('package:$oldPackageName/')) {
      final String updatedContent = content.replaceAll(
        'package:$oldPackageName/',
        'package:$newPackageName/',
      );
      file.writeAsStringSync(updatedContent);
      print('✅ Updated imports in: ${file.path}');
    }
  });

  print('🎉 All imports updated successfully!');
}
