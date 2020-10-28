import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

final fireDatabase = FirebaseDatabase.instance.reference();

void initializeFlutterFire() async {
  await Firebase.initializeApp();
}
