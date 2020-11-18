import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../model/User.dart';

final String _databaseName = "database.db";

final String _createUsersScript =
    'CREATE TABLE USERS (NAME VARCHAR(20),EMAIL VARCHAR(30),PASSWORD VARCHAR(30));';

//inicia o banco e o cria se não existir
Future<Database> _getDatabase() async {
  return openDatabase(
    join(
      await getDatabasesPath(),
      _databaseName,
    ),
    onCreate: (db, version) {
      return db.execute(_createUsersScript);
    },
    version: 1,
  );
}

Future create(User user) async {
  try {
    final Database db = await _getDatabase();

    return await db.insert('Users', user.toMap());
  } catch (e) {
    print(e);
    return;
  }
}

Future<List<User>> getUsers() async {
  try {
    final Database db = await _getDatabase();
    final List<Map<String, dynamic>> maps = await db.query('Users');
    final List<User> users = new List.generate(maps.length, (index) {
      return User.fromMap(maps[index]);
    });

    return users;
  } catch (e) {
    print(e);
    return new List<User>();
  }
}

Future<List<User>> getUserByEmail(String email) async {
  try {
    final Database db = await _getDatabase();
    final List<Map<String, dynamic>> maps =
        await db.query('Users', where: 'email = "$email"', limit: 1);
    if (maps.length == 0) {
      return new List<User>();
    }
    return new List.generate(maps.length, (index) => User.fromMap(maps[index]));
  } catch (e) {
    print(e);
    return new List<User>();
  }
}
