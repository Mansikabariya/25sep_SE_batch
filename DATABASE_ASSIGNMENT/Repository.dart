import 'package:development_project/DATABASE_ASSIGNMENT/DatabaseConnections.dart';
//import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';


class Repository
{
  late DatabaseConnection _databaseConnection;

  Repository()
  {
    _databaseConnection = DatabaseConnection();
  }

  static Database? _database;

  Future<Database> get myDatabase async
  {
    if(_database != null)
    {
      return _database!;
    }
    else
    {
      _database = await _databaseConnection.setDataBase();
      return _database!;
    }
  }

  insertRecord(table, data) async
  {
    var con = await myDatabase;
    return await con.query(table);
  }

  fetchRecord(table) async
  {
    var con = await myDatabase;
    return await con.query(table);
  }

  fetchSingleRecord(table,data) async
  {
    var con = await myDatabase;
    return await con.query(table,where: "id = ?", whereArgs: [data["id"]]);
  }

  deleteRecord(table, data) async
  {
    var con = await myDatabase;
    return await con.delete(table,where: "id = ?", whereArgs: [data["id"]]);
  }

  updateRecord(table, data) async
  {
    var con = await myDatabase;
    return await con.update(table, data,where: "id = ?", whereArgs: [data["id"]]);
  }
}