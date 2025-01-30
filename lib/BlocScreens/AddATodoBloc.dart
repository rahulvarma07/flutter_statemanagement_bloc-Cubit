import 'package:bloc_cubit/Bloc/todo_Bloc.dart';
import 'package:bloc_cubit/BlocScreens/SeeAllTheTodo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddATodoUsingBloc extends StatefulWidget {
  const AddATodoUsingBloc({super.key});

  @override
  State<AddATodoUsingBloc> createState() => _AddATodoUsingBlocState();
}

class _AddATodoUsingBlocState extends State<AddATodoUsingBloc> {
  final blocTodoController = TextEditingController();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewAllTodo()));
          },
            child: Container(height: 30, width: 50, color: Colors.blue,)
        ),
      ),
      body: Column(
        children: [
          TextField(
            controller: blocTodoController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 100,),
          GestureDetector(
            onTap: (){
              context.read<TodoBloc>().add(AddTodoBlocEvent( str: blocTodoController.text.trim()) );
              blocTodoController.clear();
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(child: Text("Add"),),
            ),
          )
        ],
      )
    );
  }
}
