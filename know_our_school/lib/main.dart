import 'package:flutter/material.dart';
import 'package:know_our_school/View/school_info.dart';
import 'package:know_our_school/ViewModel/view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SchoolViewModel(),
      child: MaterialApp(
        title: 'know our school',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const SchoolInfo(),
      ),
    );
  }
}
