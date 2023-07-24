import 'package:afart_creations/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Afart creations',
      theme: ThemeData.dark(),
      home:  const CategoryScreen(category: 'Hiphop')
    );
  }
}