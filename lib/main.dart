import 'package:afart_creations/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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