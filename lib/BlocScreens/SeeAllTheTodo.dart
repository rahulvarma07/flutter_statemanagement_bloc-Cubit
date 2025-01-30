import 'package:bloc_cubit/Bloc/todo_Bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewAllTodo extends StatefulWidget {
  const ViewAllTodo({super.key});

  @override
  State<ViewAllTodo> createState() => _ViewAllTodoState();
}

class _ViewAllTodoState extends State<ViewAllTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TodoBloc, List<String>>(builder: (context, val){
        return ListView.builder(
          itemCount: val.length,
          itemBuilder: (context, ind){
            return Padding(padding: EdgeInsets.all(8),
              child: ListTile(tileColor: Colors.blue, shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
                  title: Text(val[ind]),
              ),
            );
          },
        );
      }),
    );
  }
}
