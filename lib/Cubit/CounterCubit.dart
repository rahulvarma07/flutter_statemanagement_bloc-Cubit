import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int>{
  CounterCubit() : super(0);

  // Incrementing the State
  void increment(){
    emit(state+1);
  }

  // Decrementing the state
  void decrement(){
    emit(state-1);
  }

}