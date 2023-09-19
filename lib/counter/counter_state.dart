part of 'counter_bloc.dart';

class Counterstate{
final int count;
                                                                                                                                                                                                                                                                                                                              Counterstate({required this.count});
}

class InitialState extends Counterstate{
  InitialState() : super(count: 0);
}