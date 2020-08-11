
import 'package:enotepad/database/notes_database.dart';
import 'package:sqflite/sqflite.dart';

class Repository{

  NotesDatabase _notesDatabase = NotesDatabase();

  static Database _database;


  Future<Database> get database async{
    if(_database != null) return _database;
    _database = await _notesDatabase.setDatabase();
    return _database;
  }

   Future<int> insertNote(table,data) async{
    Database db = await database;
    return await db.insert(table, data);
  }


}