import 'package:counter_cubits_bloc/cubits/toggle_theme/theme_cubit.dart';
import 'package:counter_cubits_bloc/screens/counter_screen.dart';
import 'package:counter_cubits_bloc/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, bool>(
        builder: (context, isDarkTheme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
            home: const CounterScreen(),
          );
        },
      ),
    );
  }
}
