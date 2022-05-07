// native.dart
import 'package:drift/native.dart';
import 'dart:ffi';
import 'dart:io';
import 'package:sqlite3/open.dart';

void main() {
  open.overrideFor(OperatingSystem.linux, _openOnLinux);
  open.overrideFor(OperatingSystem.windows, _openOnWindows);
  // After setting all the overrides, you can use drift!
}

DynamicLibrary _openOnLinux() {
  final scriptDir = File(Platform.script.toFilePath()).parent;
  final libraryNextToScript = File('${scriptDir.path}/sqlite3.so');
  return DynamicLibrary.open(libraryNextToScript.path);
}

DynamicLibrary _openOnWindows() {
  final scriptDir = File(Platform.script.toFilePath()).parent;
  final libraryNextToScript = File('${scriptDir.path}/sqlite3.dll');
  return DynamicLibrary.open(libraryNextToScript.path);
}

// _openOnWindows could be implemented similarly by opening `sqlite3.dll`

SharedDatabase constructDb() {
  final db = LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
  return SharedDatabase(db);
}
