import 'package:bloc/bloc.dart';
import 'package:counter_app/modules/counter_screen.dart';
import 'package:flutter/material.dart';

import 'bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
