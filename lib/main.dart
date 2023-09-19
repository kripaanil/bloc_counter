import 'package:bloc_samp/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
                 ),
        home:  MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Counter APP - BLOC"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("YOU HAVE CLICKED THE BUTTON THIS MANY TIMES!",
            ),
            BlocBuilder<CounterBloc, Counterstate>(
              builder: (context, state) {
                return Text("${state.count}");
              },
            ),
            
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(onPressed: (){
              context.read<CounterBloc>().add(Increment());
              
          },child: Icon(Icons.add),),

          FloatingActionButton(onPressed: (){
              context.read<CounterBloc>().add(Decrement());
              
          },child: Icon(Icons.remove),),
        ],
      ),
    );
  }
}