import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, Counterstate> {
  CounterBloc() : super(InitialState()) {
   on<Increment>((event, emit) {
    final currentstatevalue = state.count;
    final Incrementvalue =  currentstatevalue + 1;

    return emit(Counterstate(count: Incrementvalue));

   });

   on<Decrement>((event, emit) {

    final currentstatevalue = state.count;
    final decrementvalue =  currentstatevalue -1;

    return emit(Counterstate(count: decrementvalue));

   });
  }
}
