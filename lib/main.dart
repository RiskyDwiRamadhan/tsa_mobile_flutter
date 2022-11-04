import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tsa_mobile_flutter/auth/main_page.dart';
import 'package:tsa_mobile_flutter/widget/map.dart';
import 'firebase_options.dart';
import 'widget/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
P