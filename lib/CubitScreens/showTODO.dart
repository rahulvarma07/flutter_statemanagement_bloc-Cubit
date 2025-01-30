import 'package:bloc_cubit/Cubit/addATodoCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class ShowTodo extends StatefulWidget {
  const ShowTodo({super.key});

  @override
  State<ShowTodo> createState() => _ShowTodoState();
}

class _ShowTodoState extends State<ShowTodo> {
  @override
  Widget build(BuildContext context) {
    // final todoCubit = BlocProvider.of<TodoCubit>(context);
    return Scaffold(
      body: BlocBuilder<TodoCubit, List<String>>(
    builder: (context, todos) {
      return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(title: Text(todos[index], ), tileColor: Colors.blue,),
        ),
      );
    },
    ),
    );
  }
}
