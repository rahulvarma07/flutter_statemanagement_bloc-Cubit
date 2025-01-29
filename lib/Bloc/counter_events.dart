part of 'counter_Bloc.dart';

sealed class CounterEvent{} // Parent Class

final class IncrementEvent extends CounterEvent{} // Sub Classes(Child) extending Parent
final class DecrementEvent extends CounterEvent{} // Sub Classes(Child) extending Parent