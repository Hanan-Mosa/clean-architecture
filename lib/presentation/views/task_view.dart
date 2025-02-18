import 'package:clean_architecture/presentation/bloc/task_bloc.dart';
import 'package:clean_architecture/presentation/bloc/task_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}
class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Task List'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: BlocBuilder<TaskBloc, TaskState>(builder: (context, state) {
          if (state is TaskLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is TaskError) {
            return Center(child: Text('Error: ${state.message}'));
          } else if (state is TaskLoaded) {
            return ListView.builder(
              itemBuilder: (context, index) => ListTile(
                title: Text(state.tasks[index].title),
                subtitle: Text('Done or not : ${state.tasks[index].completed}'),
              ),
              itemCount:state.tasks.length,
            );
          }
          return Center(child: Text('No Tasks'));
        }));
  }
}
