// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $UserNoteTable extends UserNote
    with TableInfo<$UserNoteTable, UserNoteData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserNoteTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _isAudioMeta =
      const VerificationMeta('isAudio');
  @override
  late final GeneratedColumn<bool> isAudio = GeneratedColumn<bool>(
      'is_audio', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_audio" IN (0, 1))'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 6, maxTextLength: 32),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _audioFilePathMeta =
      const VerificationMeta('audioFilePath');
  @override
  late final GeneratedColumn<String> audioFilePath = GeneratedColumn<String>(
      'audio_file_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _imageFilePathMeta =
      const VerificationMeta('imageFilePath');
  @override
  late final GeneratedColumn<String> imageFilePath = GeneratedColumn<String>(
      'image_file_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _lastModifiedAtMeta =
      const VerificationMeta('lastModifiedAt');
  @override
  late final GeneratedColumn<DateTime> lastModifiedAt =
      GeneratedColumn<DateTime>('last_modified_at', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        isAudio,
        title,
        audioFilePath,
        imageFilePath,
        content,
        createdAt,
        lastModifiedAt,
        categoryId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_note';
  @override
  VerificationContext validateIntegrity(Insertable<UserNoteData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('is_audio')) {
      context.handle(_isAudioMeta,
          isAudio.isAcceptableOrUnknown(data['is_audio']!, _isAudioMeta));
    } else if (isInserting) {
      context.missing(_isAudioMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('audio_file_path')) {
      context.handle(
          _audioFilePathMeta,
          audioFilePath.isAcceptableOrUnknown(
              data['audio_file_path']!, _audioFilePathMeta));
    }
    if (data.containsKey('image_file_path')) {
      context.handle(
          _imageFilePathMeta,
          imageFilePath.isAcceptableOrUnknown(
              data['image_file_path']!, _imageFilePathMeta));
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('last_modified_at')) {
      context.handle(
          _lastModifiedAtMeta,
          lastModifiedAt.isAcceptableOrUnknown(
              data['last_modified_at']!, _lastModifiedAtMeta));
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserNoteData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserNoteData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      isAudio: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_audio'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      audioFilePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}audio_file_path']),
      imageFilePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_file_path']),
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      lastModifiedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_modified_at']),
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
    );
  }

  @override
  $UserNoteTable createAlias(String alias) {
    return $UserNoteTable(attachedDatabase, alias);
  }
}

class UserNoteData extends DataClass implements Insertable<UserNoteData> {
  final int id;
  final bool isAudio;
  final String title;
  final String? audioFilePath;
  final String? imageFilePath;
  final String? content;
  final DateTime createdAt;
  final DateTime? lastModifiedAt;
  final int categoryId;
  const UserNoteData(
      {required this.id,
      required this.isAudio,
      required this.title,
      this.audioFilePath,
      this.imageFilePath,
      this.content,
      required this.createdAt,
      this.lastModifiedAt,
      required this.categoryId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['is_audio'] = Variable<bool>(isAudio);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || audioFilePath != null) {
      map['audio_file_path'] = Variable<String>(audioFilePath);
    }
    if (!nullToAbsent || imageFilePath != null) {
      map['image_file_path'] = Variable<String>(imageFilePath);
    }
    if (!nullToAbsent || content != null) {
      map['content'] = Variable<String>(content);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || lastModifiedAt != null) {
      map['last_modified_at'] = Variable<DateTime>(lastModifiedAt);
    }
    map['category_id'] = Variable<int>(categoryId);
    return map;
  }

  UserNoteCompanion toCompanion(bool nullToAbsent) {
    return UserNoteCompanion(
      id: Value(id),
      isAudio: Value(isAudio),
      title: Value(title),
      audioFilePath: audioFilePath == null && nullToAbsent
          ? const Value.absent()
          : Value(audioFilePath),
      imageFilePath: imageFilePath == null && nullToAbsent
          ? const Value.absent()
          : Value(imageFilePath),
      content: content == null && nullToAbsent
          ? const Value.absent()
          : Value(content),
      createdAt: Value(createdAt),
      lastModifiedAt: lastModifiedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastModifiedAt),
      categoryId: Value(categoryId),
    );
  }

  factory UserNoteData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserNoteData(
      id: serializer.fromJson<int>(json['id']),
      isAudio: serializer.fromJson<bool>(json['isAudio']),
      title: serializer.fromJson<String>(json['title']),
      audioFilePath: serializer.fromJson<String?>(json['audioFilePath']),
      imageFilePath: serializer.fromJson<String?>(json['imageFilePath']),
      content: serializer.fromJson<String?>(json['content']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      lastModifiedAt: serializer.fromJson<DateTime?>(json['lastModifiedAt']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'isAudio': serializer.toJson<bool>(isAudio),
      'title': serializer.toJson<String>(title),
      'audioFilePath': serializer.toJson<String?>(audioFilePath),
      'imageFilePath': serializer.toJson<String?>(imageFilePath),
      'content': serializer.toJson<String?>(content),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'lastModifiedAt': serializer.toJson<DateTime?>(lastModifiedAt),
      'categoryId': serializer.toJson<int>(categoryId),
    };
  }

  UserNoteData copyWith(
          {int? id,
          bool? isAudio,
          String? title,
          Value<String?> audioFilePath = const Value.absent(),
          Value<String?> imageFilePath = const Value.absent(),
          Value<String?> content = const Value.absent(),
          DateTime? createdAt,
          Value<DateTime?> lastModifiedAt = const Value.absent(),
          int? categoryId}) =>
      UserNoteData(
        id: id ?? this.id,
        isAudio: isAudio ?? this.isAudio,
        title: title ?? this.title,
        audioFilePath:
            audioFilePath.present ? audioFilePath.value : this.audioFilePath,
        imageFilePath:
            imageFilePath.present ? imageFilePath.value : this.imageFilePath,
        content: content.present ? content.value : this.content,
        createdAt: createdAt ?? this.createdAt,
        lastModifiedAt:
            lastModifiedAt.present ? lastModifiedAt.value : this.lastModifiedAt,
        categoryId: categoryId ?? this.categoryId,
      );
  UserNoteData copyWithCompanion(UserNoteCompanion data) {
    return UserNoteData(
      id: data.id.present ? data.id.value : this.id,
      isAudio: data.isAudio.present ? data.isAudio.value : this.isAudio,
      title: data.title.present ? data.title.value : this.title,
      audioFilePath: data.audioFilePath.present
          ? data.audioFilePath.value
          : this.audioFilePath,
      imageFilePath: data.imageFilePath.present
          ? data.imageFilePath.value
          : this.imageFilePath,
      content: data.content.present ? data.content.value : this.content,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      lastModifiedAt: data.lastModifiedAt.present
          ? data.lastModifiedAt.value
          : this.lastModifiedAt,
      categoryId:
          data.categoryId.present ? data.categoryId.value : this.categoryId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserNoteData(')
          ..write('id: $id, ')
          ..write('isAudio: $isAudio, ')
          ..write('title: $title, ')
          ..write('audioFilePath: $audioFilePath, ')
          ..write('imageFilePath: $imageFilePath, ')
          ..write('content: $content, ')
          ..write('createdAt: $createdAt, ')
          ..write('lastModifiedAt: $lastModifiedAt, ')
          ..write('categoryId: $categoryId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, isAudio, title, audioFilePath,
      imageFilePath, content, createdAt, lastModifiedAt, categoryId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserNoteData &&
          other.id == this.id &&
          other.isAudio == this.isAudio &&
          other.title == this.title &&
          other.audioFilePath == this.audioFilePath &&
          other.imageFilePath == this.imageFilePath &&
          other.content == this.content &&
          other.createdAt == this.createdAt &&
          other.lastModifiedAt == this.lastModifiedAt &&
          other.categoryId == this.categoryId);
}

class UserNoteCompanion extends UpdateCompanion<UserNoteData> {
  final Value<int> id;
  final Value<bool> isAudio;
  final Value<String> title;
  final Value<String?> audioFilePath;
  final Value<String?> imageFilePath;
  final Value<String?> content;
  final Value<DateTime> createdAt;
  final Value<DateTime?> lastModifiedAt;
  final Value<int> categoryId;
  const UserNoteCompanion({
    this.id = const Value.absent(),
    this.isAudio = const Value.absent(),
    this.title = const Value.absent(),
    this.audioFilePath = const Value.absent(),
    this.imageFilePath = const Value.absent(),
    this.content = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.lastModifiedAt = const Value.absent(),
    this.categoryId = const Value.absent(),
  });
  UserNoteCompanion.insert({
    this.id = const Value.absent(),
    required bool isAudio,
    required String title,
    this.audioFilePath = const Value.absent(),
    this.imageFilePath = const Value.absent(),
    this.content = const Value.absent(),
    required DateTime createdAt,
    this.lastModifiedAt = const Value.absent(),
    required int categoryId,
  })  : isAudio = Value(isAudio),
        title = Value(title),
        createdAt = Value(createdAt),
        categoryId = Value(categoryId);
  static Insertable<UserNoteData> custom({
    Expression<int>? id,
    Expression<bool>? isAudio,
    Expression<String>? title,
    Expression<String>? audioFilePath,
    Expression<String>? imageFilePath,
    Expression<String>? content,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? lastModifiedAt,
    Expression<int>? categoryId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (isAudio != null) 'is_audio': isAudio,
      if (title != null) 'title': title,
      if (audioFilePath != null) 'audio_file_path': audioFilePath,
      if (imageFilePath != null) 'image_file_path': imageFilePath,
      if (content != null) 'content': content,
      if (createdAt != null) 'created_at': createdAt,
      if (lastModifiedAt != null) 'last_modified_at': lastModifiedAt,
      if (categoryId != null) 'category_id': categoryId,
    });
  }

  UserNoteCompanion copyWith(
      {Value<int>? id,
      Value<bool>? isAudio,
      Value<String>? title,
      Value<String?>? audioFilePath,
      Value<String?>? imageFilePath,
      Value<String?>? content,
      Value<DateTime>? createdAt,
      Value<DateTime?>? lastModifiedAt,
      Value<int>? categoryId}) {
    return UserNoteCompanion(
      id: id ?? this.id,
      isAudio: isAudio ?? this.isAudio,
      title: title ?? this.title,
      audioFilePath: audioFilePath ?? this.audioFilePath,
      imageFilePath: imageFilePath ?? this.imageFilePath,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
      lastModifiedAt: lastModifiedAt ?? this.lastModifiedAt,
      categoryId: categoryId ?? this.categoryId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (isAudio.present) {
      map['is_audio'] = Variable<bool>(isAudio.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (audioFilePath.present) {
      map['audio_file_path'] = Variable<String>(audioFilePath.value);
    }
    if (imageFilePath.present) {
      map['image_file_path'] = Variable<String>(imageFilePath.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (lastModifiedAt.present) {
      map['last_modified_at'] = Variable<DateTime>(lastModifiedAt.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserNoteCompanion(')
          ..write('id: $id, ')
          ..write('isAudio: $isAudio, ')
          ..write('title: $title, ')
          ..write('audioFilePath: $audioFilePath, ')
          ..write('imageFilePath: $imageFilePath, ')
          ..write('content: $content, ')
          ..write('createdAt: $createdAt, ')
          ..write('lastModifiedAt: $lastModifiedAt, ')
          ..write('categoryId: $categoryId')
          ..write(')'))
        .toString();
  }
}

class $UserNoteCategoryTable extends UserNoteCategory
    with TableInfo<$UserNoteCategoryTable, UserNoteCategoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserNoteCategoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<int> label = GeneratedColumn<int>(
      'label', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_note_category';
  @override
  VerificationContext validateIntegrity(
      Insertable<UserNoteCategoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserNoteCategoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserNoteCategoryData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}label']),
    );
  }

  @override
  $UserNoteCategoryTable createAlias(String alias) {
    return $UserNoteCategoryTable(attachedDatabase, alias);
  }
}

class UserNoteCategoryData extends DataClass
    implements Insertable<UserNoteCategoryData> {
  final int id;
  final int? label;
  const UserNoteCategoryData({required this.id, this.label});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<int>(label);
    }
    return map;
  }

  UserNoteCategoryCompanion toCompanion(bool nullToAbsent) {
    return UserNoteCategoryCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
    );
  }

  factory UserNoteCategoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserNoteCategoryData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<int?>(json['label']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<int?>(label),
    };
  }

  UserNoteCategoryData copyWith(
          {int? id, Value<int?> label = const Value.absent()}) =>
      UserNoteCategoryData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
      );
  UserNoteCategoryData copyWithCompanion(UserNoteCategoryCompanion data) {
    return UserNoteCategoryData(
      id: data.id.present ? data.id.value : this.id,
      label: data.label.present ? data.label.value : this.label,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserNoteCategoryData(')
          ..write('id: $id, ')
          ..write('label: $label')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserNoteCategoryData &&
          other.id == this.id &&
          other.label == this.label);
}

class UserNoteCategoryCompanion extends UpdateCompanion<UserNoteCategoryData> {
  final Value<int> id;
  final Value<int?> label;
  const UserNoteCategoryCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
  });
  UserNoteCategoryCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
  });
  static Insertable<UserNoteCategoryData> custom({
    Expression<int>? id,
    Expression<int>? label,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
    });
  }

  UserNoteCategoryCompanion copyWith({Value<int>? id, Value<int?>? label}) {
    return UserNoteCategoryCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<int>(label.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserNoteCategoryCompanion(')
          ..write('id: $id, ')
          ..write('label: $label')
          ..write(')'))
        .toString();
  }
}

class $UserNoteTagTable extends UserNoteTag
    with TableInfo<$UserNoteTagTable, UserNoteTagData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserNoteTagTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<int> label = GeneratedColumn<int>(
      'label', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, label];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_note_tag';
  @override
  VerificationContext validateIntegrity(Insertable<UserNoteTagData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserNoteTagData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserNoteTagData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}label']),
    );
  }

  @override
  $UserNoteTagTable createAlias(String alias) {
    return $UserNoteTagTable(attachedDatabase, alias);
  }
}

class UserNoteTagData extends DataClass implements Insertable<UserNoteTagData> {
  final int id;
  final int? label;
  const UserNoteTagData({required this.id, this.label});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<int>(label);
    }
    return map;
  }

  UserNoteTagCompanion toCompanion(bool nullToAbsent) {
    return UserNoteTagCompanion(
      id: Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
    );
  }

  factory UserNoteTagData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserNoteTagData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<int?>(json['label']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<int?>(label),
    };
  }

  UserNoteTagData copyWith(
          {int? id, Value<int?> label = const Value.absent()}) =>
      UserNoteTagData(
        id: id ?? this.id,
        label: label.present ? label.value : this.label,
      );
  UserNoteTagData copyWithCompanion(UserNoteTagCompanion data) {
    return UserNoteTagData(
      id: data.id.present ? data.id.value : this.id,
      label: data.label.present ? data.label.value : this.label,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserNoteTagData(')
          ..write('id: $id, ')
          ..write('label: $label')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserNoteTagData &&
          other.id == this.id &&
          other.label == this.label);
}

class UserNoteTagCompanion extends UpdateCompanion<UserNoteTagData> {
  final Value<int> id;
  final Value<int?> label;
  const UserNoteTagCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
  });
  UserNoteTagCompanion.insert({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
  });
  static Insertable<UserNoteTagData> custom({
    Expression<int>? id,
    Expression<int>? label,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
    });
  }

  UserNoteTagCompanion copyWith({Value<int>? id, Value<int?>? label}) {
    return UserNoteTagCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<int>(label.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserNoteTagCompanion(')
          ..write('id: $id, ')
          ..write('label: $label')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UserNoteTable userNote = $UserNoteTable(this);
  late final $UserNoteCategoryTable userNoteCategory =
      $UserNoteCategoryTable(this);
  late final $UserNoteTagTable userNoteTag = $UserNoteTagTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [userNote, userNoteCategory, userNoteTag];
}

typedef $$UserNoteTableCreateCompanionBuilder = UserNoteCompanion Function({
  Value<int> id,
  required bool isAudio,
  required String title,
  Value<String?> audioFilePath,
  Value<String?> imageFilePath,
  Value<String?> content,
  required DateTime createdAt,
  Value<DateTime?> lastModifiedAt,
  required int categoryId,
});
typedef $$UserNoteTableUpdateCompanionBuilder = UserNoteCompanion Function({
  Value<int> id,
  Value<bool> isAudio,
  Value<String> title,
  Value<String?> audioFilePath,
  Value<String?> imageFilePath,
  Value<String?> content,
  Value<DateTime> createdAt,
  Value<DateTime?> lastModifiedAt,
  Value<int> categoryId,
});

class $$UserNoteTableFilterComposer
    extends Composer<_$AppDatabase, $UserNoteTable> {
  $$UserNoteTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isAudio => $composableBuilder(
      column: $table.isAudio, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get audioFilePath => $composableBuilder(
      column: $table.audioFilePath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imageFilePath => $composableBuilder(
      column: $table.imageFilePath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastModifiedAt => $composableBuilder(
      column: $table.lastModifiedAt,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => ColumnFilters(column));
}

class $$UserNoteTableOrderingComposer
    extends Composer<_$AppDatabase, $UserNoteTable> {
  $$UserNoteTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isAudio => $composableBuilder(
      column: $table.isAudio, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get audioFilePath => $composableBuilder(
      column: $table.audioFilePath,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imageFilePath => $composableBuilder(
      column: $table.imageFilePath,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastModifiedAt => $composableBuilder(
      column: $table.lastModifiedAt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => ColumnOrderings(column));
}

class $$UserNoteTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserNoteTable> {
  $$UserNoteTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get isAudio =>
      $composableBuilder(column: $table.isAudio, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get audioFilePath => $composableBuilder(
      column: $table.audioFilePath, builder: (column) => column);

  GeneratedColumn<String> get imageFilePath => $composableBuilder(
      column: $table.imageFilePath, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get lastModifiedAt => $composableBuilder(
      column: $table.lastModifiedAt, builder: (column) => column);

  GeneratedColumn<int> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => column);
}

class $$UserNoteTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserNoteTable,
    UserNoteData,
    $$UserNoteTableFilterComposer,
    $$UserNoteTableOrderingComposer,
    $$UserNoteTableAnnotationComposer,
    $$UserNoteTableCreateCompanionBuilder,
    $$UserNoteTableUpdateCompanionBuilder,
    (UserNoteData, BaseReferences<_$AppDatabase, $UserNoteTable, UserNoteData>),
    UserNoteData,
    PrefetchHooks Function()> {
  $$UserNoteTableTableManager(_$AppDatabase db, $UserNoteTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserNoteTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserNoteTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserNoteTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<bool> isAudio = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String?> audioFilePath = const Value.absent(),
            Value<String?> imageFilePath = const Value.absent(),
            Value<String?> content = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime?> lastModifiedAt = const Value.absent(),
            Value<int> categoryId = const Value.absent(),
          }) =>
              UserNoteCompanion(
            id: id,
            isAudio: isAudio,
            title: title,
            audioFilePath: audioFilePath,
            imageFilePath: imageFilePath,
            content: content,
            createdAt: createdAt,
            lastModifiedAt: lastModifiedAt,
            categoryId: categoryId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required bool isAudio,
            required String title,
            Value<String?> audioFilePath = const Value.absent(),
            Value<String?> imageFilePath = const Value.absent(),
            Value<String?> content = const Value.absent(),
            required DateTime createdAt,
            Value<DateTime?> lastModifiedAt = const Value.absent(),
            required int categoryId,
          }) =>
              UserNoteCompanion.insert(
            id: id,
            isAudio: isAudio,
            title: title,
            audioFilePath: audioFilePath,
            imageFilePath: imageFilePath,
            content: content,
            createdAt: createdAt,
            lastModifiedAt: lastModifiedAt,
            categoryId: categoryId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UserNoteTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserNoteTable,
    UserNoteData,
    $$UserNoteTableFilterComposer,
    $$UserNoteTableOrderingComposer,
    $$UserNoteTableAnnotationComposer,
    $$UserNoteTableCreateCompanionBuilder,
    $$UserNoteTableUpdateCompanionBuilder,
    (UserNoteData, BaseReferences<_$AppDatabase, $UserNoteTable, UserNoteData>),
    UserNoteData,
    PrefetchHooks Function()>;
typedef $$UserNoteCategoryTableCreateCompanionBuilder
    = UserNoteCategoryCompanion Function({
  Value<int> id,
  Value<int?> label,
});
typedef $$UserNoteCategoryTableUpdateCompanionBuilder
    = UserNoteCategoryCompanion Function({
  Value<int> id,
  Value<int?> label,
});

class $$UserNoteCategoryTableFilterComposer
    extends Composer<_$AppDatabase, $UserNoteCategoryTable> {
  $$UserNoteCategoryTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnFilters(column));
}

class $$UserNoteCategoryTableOrderingComposer
    extends Composer<_$AppDatabase, $UserNoteCategoryTable> {
  $$UserNoteCategoryTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));
}

class $$UserNoteCategoryTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserNoteCategoryTable> {
  $$UserNoteCategoryTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);
}

class $$UserNoteCategoryTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserNoteCategoryTable,
    UserNoteCategoryData,
    $$UserNoteCategoryTableFilterComposer,
    $$UserNoteCategoryTableOrderingComposer,
    $$UserNoteCategoryTableAnnotationComposer,
    $$UserNoteCategoryTableCreateCompanionBuilder,
    $$UserNoteCategoryTableUpdateCompanionBuilder,
    (
      UserNoteCategoryData,
      BaseReferences<_$AppDatabase, $UserNoteCategoryTable,
          UserNoteCategoryData>
    ),
    UserNoteCategoryData,
    PrefetchHooks Function()> {
  $$UserNoteCategoryTableTableManager(
      _$AppDatabase db, $UserNoteCategoryTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserNoteCategoryTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserNoteCategoryTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserNoteCategoryTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> label = const Value.absent(),
          }) =>
              UserNoteCategoryCompanion(
            id: id,
            label: label,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> label = const Value.absent(),
          }) =>
              UserNoteCategoryCompanion.insert(
            id: id,
            label: label,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UserNoteCategoryTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserNoteCategoryTable,
    UserNoteCategoryData,
    $$UserNoteCategoryTableFilterComposer,
    $$UserNoteCategoryTableOrderingComposer,
    $$UserNoteCategoryTableAnnotationComposer,
    $$UserNoteCategoryTableCreateCompanionBuilder,
    $$UserNoteCategoryTableUpdateCompanionBuilder,
    (
      UserNoteCategoryData,
      BaseReferences<_$AppDatabase, $UserNoteCategoryTable,
          UserNoteCategoryData>
    ),
    UserNoteCategoryData,
    PrefetchHooks Function()>;
typedef $$UserNoteTagTableCreateCompanionBuilder = UserNoteTagCompanion
    Function({
  Value<int> id,
  Value<int?> label,
});
typedef $$UserNoteTagTableUpdateCompanionBuilder = UserNoteTagCompanion
    Function({
  Value<int> id,
  Value<int?> label,
});

class $$UserNoteTagTableFilterComposer
    extends Composer<_$AppDatabase, $UserNoteTagTable> {
  $$UserNoteTagTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnFilters(column));
}

class $$UserNoteTagTableOrderingComposer
    extends Composer<_$AppDatabase, $UserNoteTagTable> {
  $$UserNoteTagTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get label => $composableBuilder(
      column: $table.label, builder: (column) => ColumnOrderings(column));
}

class $$UserNoteTagTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserNoteTagTable> {
  $$UserNoteTagTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);
}

class $$UserNoteTagTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserNoteTagTable,
    UserNoteTagData,
    $$UserNoteTagTableFilterComposer,
    $$UserNoteTagTableOrderingComposer,
    $$UserNoteTagTableAnnotationComposer,
    $$UserNoteTagTableCreateCompanionBuilder,
    $$UserNoteTagTableUpdateCompanionBuilder,
    (
      UserNoteTagData,
      BaseReferences<_$AppDatabase, $UserNoteTagTable, UserNoteTagData>
    ),
    UserNoteTagData,
    PrefetchHooks Function()> {
  $$UserNoteTagTableTableManager(_$AppDatabase db, $UserNoteTagTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserNoteTagTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserNoteTagTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserNoteTagTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> label = const Value.absent(),
          }) =>
              UserNoteTagCompanion(
            id: id,
            label: label,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> label = const Value.absent(),
          }) =>
              UserNoteTagCompanion.insert(
            id: id,
            label: label,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UserNoteTagTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserNoteTagTable,
    UserNoteTagData,
    $$UserNoteTagTableFilterComposer,
    $$UserNoteTagTableOrderingComposer,
    $$UserNoteTagTableAnnotationComposer,
    $$UserNoteTagTableCreateCompanionBuilder,
    $$UserNoteTagTableUpdateCompanionBuilder,
    (
      UserNoteTagData,
      BaseReferences<_$AppDatabase, $UserNoteTagTable, UserNoteTagData>
    ),
    UserNoteTagData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UserNoteTableTableManager get userNote =>
      $$UserNoteTableTableManager(_db, _db.userNote);
  $$UserNoteCategoryTableTableManager get userNoteCategory =>
      $$UserNoteCategoryTableTableManager(_db, _db.userNoteCategory);
  $$UserNoteTagTableTableManager get userNoteTag =>
      $$UserNoteTagTableTableManager(_db, _db.userNoteTag);
}
