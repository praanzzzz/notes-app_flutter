import 'package:flutter/material.dart';
import 'package:crud_flutter/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:crud_flutter/pages/home_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    );
  }
}