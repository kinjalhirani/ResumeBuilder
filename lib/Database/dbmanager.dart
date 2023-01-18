import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbStudentManager {
  Database? _database;

  Future openDb() async {
    if (_database == null) {
      _database = await openDatabase(
          join(await getDatabasesPath(), "resume.db"),
          version: 1, onCreate: (Database db, int version) async {
        await db.execute(
          "CREATE TABLE builderperson(id INTEGER PRIMARY KEY autoincrement, name TEXT, email TEXT, phone TEXT,eduDate TEXT,schoolName TEXT,degreeNamr TEXT)",

        );
      });
    }
  }

  Future<int> insertBuilderPerson(BuilderPerson builderPerson) async {
    await openDb();
    return await _database!.insert('builderPerson', builderPerson.toMap());
  }

  // Future<List<BuilderPerson>> getBuilderList() async {
  //   await openDb();
  //   final List<Map<String, dynamic>> maps = await _database!.query(
  //       'builderPerson');
  //   return List.generate(maps.length, (i) {
  //     return BuilderPerson(
  //       id: maps[i]['id'],
  //       name: maps[i]['name'],
  //       email: maps[i]['email'],
  //       phone: maps[i]['phone'],
  //       eduDate: maps[i]['eduDate'],
  //       schoolName: maps[i]['schoolName'],
  //       degreeName: maps[i]['degreeName'],
  //     );
  //   });
  // }

  Future<int> updateStudent(BuilderPerson builderPerson) async {
    await openDb();
    return await _database!.update('name', builderPerson.toMap(),
        where: "id = ?", whereArgs: [builderPerson.id]);
  }

  Future<void> deleteStudent(int id) async {
    await openDb();
    await _database!.delete(
        'builderPerson',
        where: "id = ?", whereArgs: [id]
    );
  }
}

class BuilderPerson {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? eduDate;
  String? schoolName;
  String? degreeName;

  BuilderPerson(this.id,
      this.name,
      this.email,
      this.phone,
      this.eduDate,
      this.schoolName,
      this.degreeName);


  Map<String, dynamic> toMap() {
    return {
      'name': name, 'email': email, 'phone': phone, 'eduDate': eduDate,
      'schoolName': schoolName, 'degreeName': degreeName,
    };
  }
}

