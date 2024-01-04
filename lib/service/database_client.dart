import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseClient {
  static final DatabaseClient instance = DatabaseClient();
  late Database _database;

  Future<void> initializeDatabase() async {
    Directory dir = await getApplicationCacheDirectory();
    String path = '${dir.path}/note.db';

    _database = await openDatabase(
      path,
      version: 1,
      onCreate:(db, version) async{
        await db.execute('''
          CREATE TABLE IF NOT EXISTS note(
            id INTEGER PRIMARY KEY AUTOINCREAMENT NOT NULL,
            title TEXT,
            content TEXT,
            date TEXT
          )
        ''');
      },
    );
  }
  Future<void> insert({required String title, required String content, required String date}) {
    return _database.insert('note', {
      'title' : 'test',
      'content' : 'content',
      'date' : '2024-01-04',
    });
  }

  Future<List<Map<String,dynamic>>> getDatasWithData(String date){
    return _database.query(
      'note',
      where:'date = ?',
      whereArgs: [date],
    );
  }
}
