import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_events.dart';

// Bloc<Event, State>
class CounterBloc extends Bloc<CounterEvent, int>{
  CounterBloc() : super(0){
    // Checks for the events and executes the parts inside it..
    on<IncrementEvent>((event, emit){
      emit(state + 1);
      print(state);
    });

    on<DecrementEvent>((event, emit){
      if(state == 0) return;
      emit(state-1);
    });

  }
}