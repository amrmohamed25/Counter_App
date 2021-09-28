


import 'package:counter_app/modules/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(InitialCounterState());

  int counter=1;
  static CounterCubit get(context){
    return BlocProvider.of(context);//Take care
  }
  void increase(){
    counter++;
    emit(IncreaseCounterState(counter));
  }
  void decrease(){
    counter--;
    emit(DecreaseCounterState(counter));
  }
}