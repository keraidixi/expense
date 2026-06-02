import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/expense_cubit.dart';
import 'screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const SpendWiseApp());
}

class SpendWiseApp extends StatelessWidget {
  const SpendWiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExpenseCubit(),
      child: MaterialApp(
        title: 'SpendWise',
        debugShowCheckedModeBanner: false,

        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF6750A4),
            brightness: Brightness.light,
          ),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: Colors.black87),
            titleTextStyle: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}