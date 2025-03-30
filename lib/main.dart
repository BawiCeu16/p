import 'package:flutter/material.dart';
import 'package:p/pages/home.dart';
import 'package:p/provider/counter_pov.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: ChangeNotifierProvider(create: (_) => CounterPov(), child: Home()),
    );
  }
}
