import 'package:hive/hive.dart';

const String authDatabase = "Settings";
// authDatabase

Future<bool> getIsLightMode() async {
  try {
    var database = await Hive.openBox(authDatabase);
    var isLightMode = await database.get("isLightMode");
    await database.close();
    return isLightMode;
  } catch (e) {
    rethrow;
  }
}

Future<void> setIsLightMode(bool isLightMode) async {
  var database = await Hive.openBox(authDatabase);
  await database.put("isLightMode", isLightMode);
  await database.close();
}