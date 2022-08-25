// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/counter_bloc/counter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
          'StateManagement',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: 15,),
        BlocConsumer<CounterBloc, CounterState>(
          listener: ( context, state) {
              if (state is IncrementState) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Successfully Increased'), duration: Duration(milliseconds: 400),));
              }else if ( state is DecrementState){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Successfully Decreased'), duration: Duration(milliseconds: 400),));
              }
            },

            builder: (context, state) {
            return Text(
              'Counter Value: ${state.counterValue}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            );
          },),




      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () =>
                  context.read<CounterBloc>().add(DecrementEvent()),
              child: Text('- Decrement')),
          SizedBox(
            width: 20,
          ),
          ElevatedButton(
              onPressed: () =>
                  context.read<CounterBloc>().add(IncrementEvent()),
              child: Text('+ Increment')),
        ],
      )
      ],
    ),)
    ,
    );
  }
}
