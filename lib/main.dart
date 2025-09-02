import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/theme/app_theme.dart';
import 'features/auth/screens/login_screen.dart';
import 'features/teacher/screens/teacher_home.dart';
import 'features/student/screens/student_home.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bluetooth Attendance',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, // your app_theme.dart
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/teacher': (context) => const TeacherDashboard(),
        '/student': (context) => const StudentDashboard(),
      },
    );
  }
}
