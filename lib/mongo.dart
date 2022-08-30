import 'dart:developer';

import 'database.dart';
import 'package:mongo_dart/mongo_dart.dart';

class Database {
  static connect() async {
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    var status = db.serverStatus();
    print(status);
    var collection = db.collection(COLLECTION);
    print(await collection.find().toList());
  }
}
