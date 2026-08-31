import 'package:flutter/material.dart';

import 'features/home/main_screen.dart';

class BloodlyticsApp extends StatelessWidget {
  const BloodlyticsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloodlytics',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),

      home: const MainScreen(),
    );
  }
}
