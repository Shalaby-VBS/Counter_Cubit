part of 'counter_cubit.dart';

abstract class CounterState {}

class CounterInitial extends CounterState {}

class IncrementedState extends CounterState {
  final int counter;

  IncrementedState({required this.counter});
}

class DecrementedState extends CounterState {
  final int counter;

  DecrementedState({required this.counter});
}
