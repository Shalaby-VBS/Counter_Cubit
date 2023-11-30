import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int counter = 0;

  void incrementCounter() {
    counter++;
    emit(IncrementedState(counter: counter));
  }

  void decrementCounter() {
    counter--;
    emit(DecrementedState(counter: counter));
  }
}
