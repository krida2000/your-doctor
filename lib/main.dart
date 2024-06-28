import 'package:flutter/material.dart';

import '/ui/page/home/view.dart';
import 'theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        extensions: [Style.light()],
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
