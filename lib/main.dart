import 'package:clean_architecture/presentation/bloc/task_bloc.dart';
import 'package:clean_architecture/presentation/bloc/task_event.dart';
import 'package:clean_architecture/presentation/injection.dart';
import 'package:clean_architecture/presentation/views/task_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  initInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tasks List',
      home: BlocProvider(
        create: (context) => getIt<TaskBloc>()..add(LoadTasks()),
        child: TaskView(),
      ),
    );
  }
}
