// ignore_for_file: prefer_const_constructors

import 'package:bloc_flutter/bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';

import 'bloc/counter_bloc/counter_import.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Bloc Pattern',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

