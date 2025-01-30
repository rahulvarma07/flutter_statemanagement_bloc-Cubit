import 'package:bloc_cubit/Bloc/counter_Bloc.dart';
import 'package:bloc_cubit/Bloc/todo_Bloc.dart';
import 'package:bloc_cubit/BlocScreens/AddATodoBloc.dart';
import 'package:bloc_cubit/BlocScreens/counterApplicationUsingBloc.dart';
import 'package:bloc_cubit/Cubit/CounterCubit.dart';
import 'package:bloc_cubit/Cubit/addATodoCubit.dart';
import 'package:bloc_cubit/CubitScreens/AddaTODO.dart';
import 'package:bloc_cubit/CubitScreens/CounterApplicationUsingCubit.dart';
import 'package:bloc_cubit/CubitScreens/showTODO.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=> TodoBloc()),
        BlocProvider(create: (_)=> TodoCubit()),
        BlocProvider(create: (_)=> CounterCubit()),
        BlocProvider(create: (_)=> CounterBloc()),
      ],
      child: MaterialApp(
        home: AddATodoUsingBloc(),
      ),
    );
  }
}
