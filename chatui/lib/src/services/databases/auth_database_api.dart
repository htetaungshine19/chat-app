import 'package:chatui/src/models/auth.dart';
import 'package:hive/hive.dart';

const String authDatabase = "x";
// authDatabase

Future<Auth> getToken() async {
  try {
    var database = await Hive.openBox(authDatabase);
    var auth = await database.get("auth");
    await database.close();
    return auth;
  } catch (e) {
    rethrow;
  }
}

Future<void> setToken(Auth auth) async {
  var database = await Hive.openBox(authDatabase);
  await database.put("auth", auth);
  // print("key set successful");
  await database.close();
}
