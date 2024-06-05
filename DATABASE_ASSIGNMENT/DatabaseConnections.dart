

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnection 
{
  Future<Database> setDataBase() async
  {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path,"MyDatabase");

    var database = await openDatabase(path, version: 1, onCreate: CreateTable);

    return database;
  }

  Future<void> CreateTable(Database database, int version) async
  {
    String? sql = "create table Courses (id integer primary key AUTOINCREMENT, name text, course text, coursecode text)";

    await database.execute(sql);
  }
}