import 'package:bloc_cubit/Bloc/counter_Bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterApplicationUsingBloc extends StatefulWidget {
  const CounterApplicationUsingBloc({super.key});

  @override
  State<CounterApplicationUsingBloc> createState() => _CounterApplicationUsingBlocState();
}

class _CounterApplicationUsingBlocState extends State<CounterApplicationUsingBloc> {
  @override
  Widget build(BuildContext context) {
    final counterBlocInstance = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<CounterBloc, int>(builder: (context, val){
            return Center(child: Text("Counter : $val"),);
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (){
                  counterBlocInstance.add(DecrementEvent());
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Center(child: Text("-"),),
                ),
              ),
              GestureDetector(
                onTap: (){
                  counterBlocInstance.add(IncrementEvent());
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Center(child: Text("+"),),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
