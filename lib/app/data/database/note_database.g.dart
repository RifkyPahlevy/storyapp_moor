// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Note extends DataClass implements Insertable<Note> {
  final int? id;
  final String judul;
  final String cerita;
  final String gambar;
  final String tanggal;
  Note(
      {this.id,
      required this.judul,
      required this.cerita,
      required this.gambar,
      required this.tanggal});
  factory Note.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Note(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      judul: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}judul'])!,
      cerita: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cerita'])!,
      gambar: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}gambar'])!,
      tanggal: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tanggal'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['judul'] = Variable<String>(judul);
    map['cerita'] = Variable<String>(cerita);
    map['gambar'] = Variable<String>(gambar);
    map['tanggal'] = Variable<String>(tanggal);
    return map;
  }

  NotesCompanion toCompanion(bool nullToAbsent) {
    return NotesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      judul: Value(judul),
      cerita: Value(cerita),
      gambar: Value(gambar),
      tanggal: Value(tanggal),
    );
  }

  factory Note.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Note(
      id: serializer.fromJson<int?>(json['id']),
      judul: serializer.fromJson<String>(json['judul']),
      cerita: serializer.fromJson<String>(json['cerita']),
      gambar: serializer.fromJson<String>(json['gambar']),
      tanggal: serializer.fromJson<String>(json['tanggal']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'judul': serializer.toJson<String>(judul),
      'cerita': serializer.toJson<String>(cerita),
      'gambar': serializer.toJson<String>(gambar),
      'tanggal': serializer.toJson<String>(tanggal),
    };
  }

  Note copyWith(
          {int? id,
          String? judul,
          String? cerita,
          String? gambar,
          String? tanggal}) =>
      Note(
        id: id ?? this.id,
        judul: judul ?? this.judul,
        cerita: cerita ?? this.cerita,
        gambar: gambar ?? this.gambar,
        tanggal: tanggal ?? this.tanggal,
      );
  @override
  String toString() {
    return (StringBuffer('Note(')
          ..write('id: $id, ')
          ..write('judul: $judul, ')
          ..write('cerita: $cerita, ')
          ..write('gambar: $gambar, ')
          ..write('tanggal: $tanggal')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, judul, cerita, gambar, tanggal);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Note &&
          other.id == this.id &&
          other.judul == this.judul &&
          other.cerita == this.cerita &&
          other.gambar == this.gambar &&
          other.tanggal == this.tanggal);
}

class NotesCompanion extends UpdateCompanion<Note> {
  final Value<int?> id;
  final Value<String> judul;
  final Value<String> cerita;
  final Value<String> gambar;
  final Value<String> tanggal;
  const NotesCompanion({
    this.id = const Value.absent(),
    this.judul = const Value.absent(),
    this.cerita = const Value.absent(),
    this.gambar = const Value.absent(),
    this.tanggal = const Value.absent(),
  });
  NotesCompanion.insert({
    this.id = const Value.absent(),
    required String judul,
    required String cerita,
    required String gambar,
    required String tanggal,
  })  : judul = Value(judul),
        cerita = Value(cerita),
        gambar = Value(gambar),
        tanggal = Value(tanggal);
  static Insertable<Note> custom({
    Expression<int?>? id,
    Expression<String>? judul,
    Expression<String>? cerita,
    Expression<String>? gambar,
    Expression<String>? tanggal,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (judul != null) 'judul': judul,
      if (cerita != null) 'cerita': cerita,
      if (gambar != null) 'gambar': gambar,
      if (tanggal != null) 'tanggal': tanggal,
    });
  }

  NotesCompanion copyWith(
      {Value<int?>? id,
      Value<String>? judul,
      Value<String>? cerita,
      Value<String>? gambar,
      Value<String>? tanggal}) {
    return NotesCompanion(
      id: id ?? this.id,
      judul: judul ?? this.judul,
      cerita: cerita ?? this.cerita,
      gambar: gambar ?? this.gambar,
      tanggal: tanggal ?? this.tanggal,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (judul.present) {
      map['judul'] = Variable<String>(judul.value);
    }
    if (cerita.present) {
      map['cerita'] = Variable<String>(cerita.value);
    }
    if (gambar.present) {
      map['gambar'] = Variable<String>(gambar.value);
    }
    if (tanggal.present) {
      map['tanggal'] = Variable<String>(tanggal.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotesCompanion(')
          ..write('id: $id, ')
          ..write('judul: $judul, ')
          ..write('cerita: $cerita, ')
          ..write('gambar: $gambar, ')
          ..write('tanggal: $tanggal')
          ..write(')'))
        .toString();
  }
}

class $NotesTable extends Notes with TableInfo<$NotesTable, Note> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NotesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _judulMeta = const VerificationMeta('judul');
  @override
  late final GeneratedColumn<String?> judul = GeneratedColumn<String?>(
      'judul', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 250),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _ceritaMeta = const VerificationMeta('cerita');
  @override
  late final GeneratedColumn<String?> cerita = GeneratedColumn<String?>(
      'cerita', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 250),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _gambarMeta = const VerificationMeta('gambar');
  @override
  late final GeneratedColumn<String?> gambar = GeneratedColumn<String?>(
      'gambar', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 250),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _tanggalMeta = const VerificationMeta('tanggal');
  @override
  late final GeneratedColumn<String?> tanggal = GeneratedColumn<String?>(
      'tanggal', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 250),
      type: const StringType(),
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, judul, cerita, gambar, tanggal];
  @override
  String get aliasedName => _alias ?? 'notes';
  @override
  String get actualTableName => 'notes';
  @override
  VerificationContext validateIntegrity(Insertable<Note> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('judul')) {
      context.handle(
          _judulMeta, judul.isAcceptableOrUnknown(data['judul']!, _judulMeta));
    } else if (isInserting) {
      context.missing(_judulMeta);
    }
    if (data.containsKey('cerita')) {
      context.handle(_ceritaMeta,
          cerita.isAcceptableOrUnknown(data['cerita']!, _ceritaMeta));
    } else if (isInserting) {
      context.missing(_ceritaMeta);
    }
    if (data.containsKey('gambar')) {
      context.handle(_gambarMeta,
          gambar.isAcceptableOrUnknown(data['gambar']!, _gambarMeta));
    } else if (isInserting) {
      context.missing(_gambarMeta);
    }
    if (data.containsKey('tanggal')) {
      context.handle(_tanggalMeta,
          tanggal.isAcceptableOrUnknown(data['tanggal']!, _tanggalMeta));
    } else if (isInserting) {
      context.missing(_tanggalMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Note map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Note.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $NotesTable createAlias(String alias) {
    return $NotesTable(attachedDatabase, alias);
  }
}

abstract class _$NoteManager extends GeneratedDatabase {
  _$NoteManager(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $NotesTable notes = $NotesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [notes];
}
