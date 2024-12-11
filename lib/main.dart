import 'package:flutter/material.dart';
import 'package:myapp/pages/dashboard/db1.dart';
import 'package:myapp/pages/dashboard/impresion.dart';
import 'package:myapp/pages/dashboard/input_image.dart';
import 'package:myapp/pages/dashboard/mood_log.dart';
import 'package:myapp/pages/dashboard/resullt.dart';
import 'package:myapp/pages/register.dart';
import 'package:myapp/pages/started.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FeelMate',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StartedPage()
    );
  }
}

