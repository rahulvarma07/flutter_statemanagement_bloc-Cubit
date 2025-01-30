import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<List<String>>{
  TodoCubit() : super([]);
  
  void addATodoToTheCollection(String str){
    print(str);
    state.add(str);
    // print(state);
    emit([...state]);
  }
}