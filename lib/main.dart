import 'package:flutter/material.dart';
import 'mongo.dart';
import 'package:mongo_dart/mongo_dart.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Database.connect();
  runApp(MaterialApp());
}
