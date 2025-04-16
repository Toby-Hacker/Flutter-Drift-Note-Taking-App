import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

class UserNote extends Table {
  IntColumn get id => integer().autoIncrement()();
  BoolColumn get isAudio => boolean()();
  TextColumn get title => text().withLength(min: 6, max: 32)();
  TextColumn get audioFilePath => text().nullable()();
  TextColumn get imageFilePath => text().nullable()();
  TextColumn get content => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get lastModifiedAt => dateTime().nullable()();

  // Foreign
  IntColumn get categoryId => integer()();
}

class UserNoteCategory extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get label => integer().nullable()();
}

class UserNoteTag extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get label => integer().nullable()();
}
