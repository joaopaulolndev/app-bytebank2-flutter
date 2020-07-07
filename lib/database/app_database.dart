import 'package:bytebank2/database/dao/contact_dao.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'bytebank.db');
  return openDatabase(path, onCreate: (db, version) {
    db.execute(ContactDao.tableSql);
  },
    version: 1,
  );
}