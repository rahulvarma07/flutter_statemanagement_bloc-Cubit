part of 'todo_Bloc.dart';

sealed class BlocEvents{}
final class AddTodoBlocEvent extends BlocEvents{
  final String str;
  AddTodoBlocEvent({required this.str});
}