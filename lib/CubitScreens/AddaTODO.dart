import 'package:bloc_cubit/Cubit/addATodoCubit.dart';
import 'package:bloc_cubit/CubitScreens/showTODO.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddATodo extends StatefulWidget {
  const AddATodo({super.key});

  @override
  State<AddATodo> createState() => _AddATodoState();
}

class _AddATodoState extends State<AddATodo> {
  final todoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //final todoCubit = BlocProvider.of<TodoCubit>(context);
    return Scaffold(
      // AppBar
      appBar: AppBar(
        centerTitle: true,
        title: GestureDetector(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowTodo()));},
          child: Container(height: 40, width: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: todoController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 100,),
            GestureDetector(
              onTap: (){
                // print(todoController.text);
                context.read<TodoCubit>().addATodoToTheCollection(todoController.text.trim());
                todoController.clear();
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
        ),
      ),
    );
  }
}
