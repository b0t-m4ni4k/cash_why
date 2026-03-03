import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Future<Database> inicializarDB() async {
    String ruta = await getDatabasesPath();

    String path = join(ruta, "operaciones.db");

    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute("");
      },
    );
  }
}
