import 'package:counter_cubits_bloc/cubits/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  final VoidCallback toggleTheme;

  const CounterView({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Counter App"),
            IconButton(
              onPressed: () {
                toggleTheme();
              },
              icon: Theme.of(context).brightness == Brightness.light
                  ? const Icon(Icons.dark_mode)
                  : const Icon(Icons.light_mode),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                  },
                  iconSize: 40,
                  icon: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 20,
                ),
                BlocBuilder<CounterCubit, int>(
                  builder: (context, state) {
                    return Text(
                      state.toString(),
                      style: const TextStyle(
                        fontSize: 50,
                      ),
                    );
                  },
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    context.read<CounterCubit>().decrement();
                  },
                  iconSize: 40,
                  icon: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterCubit>().restart();
        },
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        child: const Icon(Icons.restart_alt),
      ),
    );
  }
}
