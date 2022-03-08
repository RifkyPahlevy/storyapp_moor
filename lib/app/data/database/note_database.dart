import 'package:moor_flutter/moor_flutter.dart';
part 'note_database.g.dart';

class Notes extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get judul => text().withLength(min: 1, max: 250)();
  TextColumn get cerita => text().withLength(min: 1, max: 250)();
  TextColumn get gambar => text().withLength(min: 1, max: 250)();
  TextColumn get tanggal => text().withLength(min: 1, max: 250)();
}

@UseMoor(tables: [Notes])
class NoteManager extends _$NoteManager {
  NoteManager()
      : super(FlutterQueryExecutor.inDatabaseFolder(path: 'notes.sqlite'));

  @override
  int get schemaVersion => 2;

  //fetch data notes one time
  Future<List<Note>> getAllNotes() => select(notes).get();

  //fetch notes realtime
  Stream<List<Note>> getAllNotesStream() => select(notes).watch();

//insert notes
  Future<int> insertNote(Note note) => into(notes).insert(note);

//edit notes
  Future<bool> editNotes(Note note) => update(notes).replace(note);

  //delete notes
  Future<int> deleteNotes(Note note) => delete(notes).delete(note);
}
