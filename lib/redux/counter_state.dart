import 'package:flutter/foundation.dart';

@immutable
class CounterState {
  const CounterState(int value) : _value = value; 
  final int _value;

  get value => _value;
}