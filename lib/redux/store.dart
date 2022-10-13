import 'package:flutter/material.dart';

class Store<Action, State> extends ChangeNotifier {
  Store({
    required State initialState,
    required this.reducer,
  }) : _state = initialState;
  
  State _state;
  State Function(State state, Action action) reducer;

  State get state => _state;

  void dispatch(Action action) {
    _state = reducer(state, action);
    notifyListeners();
  }
}