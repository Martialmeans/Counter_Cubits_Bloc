import 'package:counter_cubits_bloc/cubits/counter/counter_cubit.dart';
import 'package:counter_cubits_bloc/cubits/toggle_theme/theme_cubit.dart';
import 'package:counter_cubits_bloc/screens/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: CounterView(
        toggleTheme: () {
          context.read<ThemeCubit>().changed();
        },
      ),
    );
  }
}
