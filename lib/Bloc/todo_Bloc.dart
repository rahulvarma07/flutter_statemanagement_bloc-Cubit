import 'package:flutter_bloc/flutter_bloc.dart';

part 'todo_Events.dart';


// Event State
class TodoBloc extends Bloc<BlocEvents, List<String>>{
  TodoBloc() : super([]){
    on<AddTodoBlocEvent>((event,emit){
      emit([...state, event.str]);
    });
  }
}