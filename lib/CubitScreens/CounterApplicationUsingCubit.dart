import 'package:bloc_cubit/Cubit/CounterCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterUsingCubit extends StatefulWidget {
  const CounterUsingCubit({super.key});

  @override
  State<CounterUsingCubit> createState() => _CounterUsingCubitState();
}

class _CounterUsingCubitState extends State<CounterUsingCubit> {
  @override
  Widget build(BuildContext context) {
    final cubitCounter = BlocProvider.of<CounterCubit>(context); // Instance
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<CounterCubit, int>( // Only used to build this section..
            builder: (context, counter){
              return Text("Count : $counter");
            },
          ),

          SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (){
                  cubitCounter.increment();
                },
                child: Container(
                  height: 100,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue),
                    child: Center(child: Text("+")),
                ),
              ),
              GestureDetector(
                onTap: (){
                  cubitCounter.decrement();
                },
                child: Container(
                  height: 100,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue),
                    child: Center(child: Text("-")),
                  ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
