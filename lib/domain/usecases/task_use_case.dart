import 'package:clean_architecture/data/models/task_model.dart';
import 'package:clean_architecture/domain/repositories/task_repository.dart';

class TasksUseCase{
  TaskRepository _repository ;
  TasksUseCase(this._repository);
Future<List<TaskModel>> call(){
    return  _repository.getTasks();
  }
}