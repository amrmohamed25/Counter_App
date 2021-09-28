
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';



class CounterScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) { return CounterCubit(); },
      child: BlocConsumer<CounterCubit,CounterState>(
        builder: (BuildContext context, state) { return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Counter',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    CounterCubit.get(context).decrease();
                  },
                  child: const Text('Minus', style: TextStyle(fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${CounterCubit.get(context).counter}',
                    style: const TextStyle(fontSize: 50,fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    CounterCubit.get(context).increase();
                  },
                  child: const Text('Plus', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        );},
        listener: (BuildContext context, CounterState state) {
          if(state is IncreaseCounterState){
            print('Increase and counter = ${state.counter}');
          }
          if(state is DecreaseCounterState){
            print('Decrease and counter = ${state.counter}');
          }
        },
      ),
    );
  }
}
