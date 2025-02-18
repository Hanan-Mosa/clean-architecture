import 'package:clean_architecture/data/models/task_model.dart';

abstract class TaskState{}
class TaskInitial extends TaskState{}
class TaskLoading extends TaskState{}
  class TaskLoaded extends TaskState{
  List<TaskModel> tasks;
  TaskLoaded({required this.tasks});
  }
  class TaskError extends TaskState{
  String message;
    TaskError({required this.message});
  }