import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';
import 'theme/app_colors.dart';

void main() {
  runApp(const PadariaNovaEsperancaApp());
}

class PadariaNovaEsperancaApp extends StatelessWidget {
  const PadariaNovaEsperancaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Padaria Nova Esperança',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.background,
        cardColor: AppColors.card,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.textPrimary),
          bodyMedium: TextStyle(color: AppColors.textSecondary),
        ),
      ),
      home: const DashboardScreen(),
    );
  }
}
