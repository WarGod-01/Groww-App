import 'package:postgres/postgres.dart';
import 'package:groww/JsonModels/users.dart';

class DatabaseHelper {
  final String databaseName = "postgres";
  final String host = 'localhost'; // e.g., 'localhost' or 'your-db-host-url'
  final int port = 5432; // PostgreSQL default port
  final String username = 'your-username';
  final String password = 'your-password';

  // Connection to PostgreSQL
  Future<PostgreSQLConnection> openConnection() async {
    final connection = PostgreSQLConnection(
      host,
      port,
      databaseName,
      username: username,
      password: password,
    );
    await connection.open();
    return connection;
  }

  // Now we must create our user table in PostgreSQL
  String users =
      "CREATE TABLE IF NOT EXISTS users (usrId SERIAL PRIMARY KEY, usrName TEXT UNIQUE, usrPassword TEXT)";

  // Initialize the database
  Future<void> initDB() async {
    final connection = await openConnection();
    await connection.query(users);
    await connection.close();
  }

  // Login Method
  Future<bool> login(Users user) async {
    final connection = await openConnection();

    var result = await connection.query(
      "SELECT * FROM users WHERE usrName = @usrName AND usrPassword = @usrPassword",
      substitutionValues: {
        'usrName': user.usrName,
        'usrPassword': user.usrPassword,
      },
    );

    await connection.close();
    return result.isNotEmpty;
  }

  // Sign up
  Future<int> signup(Users user) async {
    final connection = await openConnection();

    try {
      await connection.query(
        "INSERT INTO users (usrName, usrPassword) VALUES (@usrName, @usrPassword)",
        substitutionValues: {
          'usrName': user.usrName,
          'usrPassword': user.usrPassword,
        },
      );
      await connection.close();
      return 1; // Indicate success
    } catch (e) {
      await connection.close();
      return 0; // Indicate failure
    }
  }
}
