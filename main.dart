import 'package:flutter/material.dart';
import 'home_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DarkMovies',
      theme: ThemeData.dark(), // Dark theme
      home: DarkMoviesApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}