import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logic/counter_cubit.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter Cubit")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Text(
                state is IncrementedState
                    ? state.counter.toString()
                    : state is DecrementedState
                        ? state.counter.toString()
                        : "0",
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterCubit>().incrementCounter();
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 40),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterCubit>().decrementCounter();
                },
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
