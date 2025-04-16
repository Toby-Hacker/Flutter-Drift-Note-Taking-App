import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:drift_note_taking_app/data/models/note.model.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    UserNote,
    UserNoteCategory,
    UserNoteTag,
  ],
)
class AppDatabase extends _$AppDatabase {
  static AppDatabase instance() => AppDatabase();

  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Future<List<UserNote>> get allNotes => select(userNote).get();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
