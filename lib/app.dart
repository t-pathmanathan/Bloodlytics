import 'package:flutter/material.dart';

import 'features/home/main_screen.dart';

class BloodlyticsApp extends StatelessWidget {
  const BloodlyticsApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF2563EB);
    const backgroundColor = Color(0xFFF6F8FB);
    const textColor = Color(0xFF172033);
    const secondaryTextColor = Color(0xFF667085);

    final colorScheme = ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.light,
    );

    return MaterialApp(
      title: 'Bloodlytics',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,

        scaffoldBackgroundColor: backgroundColor,

        appBarTheme: const AppBarTheme(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          elevation: 0,
          centerTitle: false,
          titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: textColor,
          ),
        ),

        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: textColor,
            letterSpacing: -0.5,
          ),
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: textColor,
            letterSpacing: -0.2,
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: secondaryTextColor,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: secondaryTextColor,
          ),
          bodySmall: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: secondaryTextColor,
          ),
        ),

        cardTheme: CardThemeData(
          elevation: 0,
          margin: EdgeInsets.zero,
          color: Colors.white,
          surfaceTintColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),

        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(0, 44),
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            side: BorderSide(color: colorScheme.outlineVariant),
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Colors.white,
          elevation: 0,
          height: 72,
          indicatorColor: colorScheme.primaryContainer,
          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return const TextStyle(fontSize: 12, fontWeight: FontWeight.w600);
            }

            return const TextStyle(fontSize: 12, fontWeight: FontWeight.w500);
          }),
        ),
      ),
      home: const MainScreen(),
    );
  }
}
