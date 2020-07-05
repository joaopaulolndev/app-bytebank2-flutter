import 'package:bytebank2/models/contact.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void createDatabase(){
  getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'bytebank.db');

    return openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE contacts('
          'id INTEGER PRIMARY KEY, '
          'name TEXT, '
          'accountNumber INTEGER)');
    }, version: 1);
  });
}

void save(Contact contact) {

}