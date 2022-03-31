import 'package:flutter/material.dart';
import 'package:flutter_proivder_user_app/provider/users.dart';
import 'package:provider/provider.dart';
import './homepage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Users(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
