import 'counter_action.dart';
import 'counter_state.dart';
import 'store.dart';

final counterStore = Store<CounterAction, CounterState>(
  initialState: const CounterState(0),
  reducer: _reducer,
);

CounterState _reducer(CounterState state, CounterAction action) {
  switch (action) {
    case CounterAction.increment:
      return CounterState(state.value + 1);
    case CounterAction.decrement:
      return CounterState(state.value - 1);
    case CounterAction.reset:
      return const CounterState(0);
    default:
      return state;
  }
}