import 'package:flutter/material.dart';
import 'package:lesson_4/widgets/user_file.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UserFile(),
    );
  }
}