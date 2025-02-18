import 'package:clean_architecture/data/models/task_model.dart';

abstract class TaskRepository{
  Future<List<TaskModel>> getTasks();
}