part of 'counter_bloc.dart';

 class CounterState extends Equatable {
  final int counterValue;
  const CounterState({required this.counterValue});

  @override
  List<Object> get props => [counterValue];
}

class CounterInitial extends CounterState {
  CounterInitial(): super(counterValue: 0);

}
class IncrementState extends CounterState{
  IncrementState({required super.counterValue});
}

class DecrementState extends CounterState {
  DecrementState({required super.counterValue});
}


