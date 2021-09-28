abstract class CounterState{}

class InitialCounterState extends CounterState{}

class IncreaseCounterState extends CounterState{
  final int counter;
  IncreaseCounterState(this.counter);
}

class DecreaseCounterState extends CounterState{
  final int counter;
  DecreaseCounterState(this.counter);
}
